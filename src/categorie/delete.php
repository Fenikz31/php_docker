<div class="container text-center mt-4">
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Nom de la catégorie :
                <input type="text" name="categorieName" class="form-control" value="<?= $data["catégorie"]->name ?>">
            </label>


            <div class="form-group d-flex flex-column">
                <label for="description">Description de la catégorie :</label>
                <textarea name="description" cols="30" rows="10"><?= $data["catégorie"]->description ?></textarea>
            </div>

            <div class="form-group">
                <label for="categoriePicture"><img
                        src="/app/components/img/categorie_pictures/<?= $data["catégorie"]->categorie_picture ?>"
                        width="100px" height="100px"></label>
                <input type="file" name="categoriePicture">
            </div>

            <div class="text-center mt-3">
                <button type="submit" name="deleteCategorie" class="createBtn"><span><i
                            class="far fa-check-circle mr-2"></i></span>Confirmer la suppression</button>
                <a href="/categorie/index" class="returnBtn"><span><i
                            class="far fa-arrow-alt-circle-left mr-2"></i></span>Retour</a>
            </div>
        </div>
    </form>
</div>