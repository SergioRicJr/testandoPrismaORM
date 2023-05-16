import { Request, Response } from "express";
import { prismaClient } from "./database/prismaClient";

export class Controller {
    static async createUser(req: Request, res: Response) {
        const {name, email} = req.body

        const user = await prismaClient.user.create({
            data: {
                 name: name,
                 email: email
            }
        })

        return res.status(200).json({message: user})
    }

    static async createReceita(req: Request, res: Response) {

    }
}