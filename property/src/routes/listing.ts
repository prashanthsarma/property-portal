import express, { Request, Response } from 'express';
import { Property } from '../models/property';
import { IListingResponse } from '@prashanthsarma/property-portal-common'

const router = express.Router();

router.get(
  '/api/property/listing',
  async (req: Request, res: Response) => {
    const listing = await Property.find({});
    res.status(200).send({ listing } as IListingResponse);
  }
);

export { router as listingRouter };
