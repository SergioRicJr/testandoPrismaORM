import { Router } from "express";
import { Controller } from "./controller";


const router = Router()

router
    .post('/user', Controller.createUser)

export default router