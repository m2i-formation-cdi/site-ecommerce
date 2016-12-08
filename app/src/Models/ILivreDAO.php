<?php
namespace m2i\ecommerce\DAO;

use m2i\ecommerce\DTO\LivreDTO;

interface ILivreDAO {

    public function findAll();

    public function findOneById(array $pk);

    public function find(array $search);

    public function delete(LivreDTO $livre);

    public function save (LivreDTO $livre);

}