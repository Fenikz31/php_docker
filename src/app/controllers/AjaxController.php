<?php

class AjaxController extends Controller
{
    /**
     * Function that get all categories given a specific level
     * @return json
     */
    public function getCategoriesByLevel()
    {
        if (isset($_POST) && isset($_POST["level"])) {
            $_POST = $this->secureArray($_POST);

            $level = $_POST["level"];
            $newCategories = $this->model("Quiz")->getCategoriesByLevel($level);

            $nb = 1;
            foreach ($newCategories as $newCat) {
                $categories[$nb] =  [$newCat["id_categorie"], $newCat["name"], $newCat["categorie_picture"]];
                $nb++;
            }
            echo json_encode($categories);
        }
    }

    /**
     * Function that get the maximum number of questions in order to display it on the quiz/index view
     * @return json
     */
    public function getMaxQuestions()
    {
        $_POST = $this->secureArray($_POST);
        $maxNb = $this->model("Quiz")->getQuestionsNb($_POST["data"], $_POST["level"]);
        echo json_encode($maxNb);
    }
}