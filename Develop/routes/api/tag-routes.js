const router = require('express').Router();
const { Tag, Product, ProductTag } = require('../../models');

// The `/api/tags` endpoint

router.get('/', async (req, res) => {
  // find all tags
  // be sure to include its associated Product data
  try {
    const tags = await Product.findAll({
      include: [{ model: Category }, { model: Tag}]
    });
    res.status(200).json(tags);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Server error" });
  }
});

router.get('/:id', async (req, res) => {
  // find a single tag by its `id`
  // be sure to include its associated Product data
  try {
    const tags = await Product.findByPk(req.params.id, {
      include: [{ model: Category }, { model: Tag}]
    });
    res.json(tags);
  } catch (error) {
    console.error(error);
    resizeTo.status(500).json({ message: "Server error"})
  }
});

router.post('/', (req, res) => {
  // create a new tag
});

router.put('/:id', (req, res) => {
  // update a tag's name by its `id` value
});

router.delete('/:id', (req, res) => {
  // delete on tag by its `id` value
});

module.exports = router;
