import express from 'express'
import * as pdController from '../controllers/product'
import uploadCloud from '../config/cloudinary.config';

const router = express.Router();

router.get('/',pdController.getPdLimit)

router.get('/search/keyword',pdController.searchPd)

router.get('/all',pdController.getPd)

router.get('/cate/:slug',pdController.getPdByCate)

router.get('/subcate/:slug',pdController.getPdBySubCate)

router.get('/imgs/:id',pdController.getPdImgs)

router.get('/:id',pdController.getOnePd)

router.post('/',uploadCloud.none(),pdController.addPd)

router.put('/:id',uploadCloud.none(),pdController.updatePd)

router.delete('/:id',pdController.deletePd)


export default router