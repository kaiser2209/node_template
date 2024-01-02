import { Request, Response, Router } from "express";

const router = Router();

router.post('/users', (req: Request, res: Response) => {
    return res.status(201).send();
});

router.get('/', (req: Request, res: Response) => {
    return res.status(200).send('Servidor rodando normalmente');
});

export { router };