<?php

namespace App\Controllers;
use Zend\Diactoros\Response\RedirectResponse;

class IndexController extends BaseController {
  public function getIndex() {
    return $this->renderHTML('index.html');
  }
}