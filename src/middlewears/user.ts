import { NextFunction, Request, Response } from "express";
import jwt from "jsonwebtoken";
import User from "../entity/User";

// middleware to chech if the user is authenticated
export default async (req: Request, res: Response, next: NextFunction) => {
  try {
    // get token from cookies
    const token = req.cookies.token;
    console.log(token)
    console.log("oneeaaa")
    if (!token) return next();
    console.log("befor verf")
    // if token exists,  verify if it's valid
    const { user }: any = jwt.verify(token, 'rgtredkemddm');
    console.log("verfied")
    const foundUser = await User.findOne({ id: user });
    // return the user and call next
    res.locals.user = foundUser;
    return next();
  } catch (error) {
    console.log(error);
    return res.status(401).json({ error: "unauthenticated" });
  }
};
