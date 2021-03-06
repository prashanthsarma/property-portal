import dotenv from 'dotenv';
dotenv.config()

import { MongoMemoryServer } from 'mongodb-memory-server';
import mongoose from 'mongoose';
import { app } from '../app';
import { User } from '../models/user';
import { seedUserData } from '../_data/seedUsersData';

const start = async () => {

  const mongo = new MongoMemoryServer();
  const mongoUri = await mongo.getUri();

  try {
    await mongoose.connect(mongoUri, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
      useCreateIndex: true
    });
    mongoose.set('debug', true)
    console.log('Connected to MongoDb');
    await User.create(seedUserData);
    console.log('Imported seed data to MongoDb');
  } catch (err) {
    console.error(err);
  }

  app.listen(4000, 'app.test.com', () => {
    console.log('Auth Dev listening on port 4000!');
  });
};

start();
