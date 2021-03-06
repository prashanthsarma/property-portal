import dotenv from 'dotenv';
dotenv.config()

import { MongoMemoryServer } from 'mongodb-memory-server';
import mongoose from 'mongoose';
import { app } from '../app';
import { seedPropertiesData } from '../_data/seedPropertiesData';


const start = async () => {
  if (!process.env.JWT_KEY) {
    throw new Error('JWT_KEY must be definedn');
  }
  
  try {
    const mongo = new MongoMemoryServer();
    const mongoUri = await mongo.getUri();
    console.log(mongoUri);

    await mongoose.connect(mongoUri, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log('Connected to MongoDb');
    const seedSaving: Promise<any>[] = []
    seedPropertiesData.forEach(p => {
      seedSaving.push(p.save());
    });
    await Promise.all(seedSaving);
    console.log('Imported seed property data to MongoDb');
  } catch (err) {
    console.error(err);
  }

  app.listen(4001,'app.test.com', () => {
    console.log('Property Dev listening on port 4001!');
  });
};

start();
