<?php require_once("includes/header.php"); ?>

<div class="videoSection">
    <?php

    $subscriptionsProvider = new SubscriptionsProvider($con, $userLoggedInObj);
    $subscriptionVideos = $subscriptionsProvider->getVideos();

    $videoGrid = new VideoGrid($con, $userLoggedInObj->getUsername());

    if(User::isLoggedIn() && sizeof($subscriptionVideos) > 0) {
        echo $videoGrid->create($subscriptionVideos, "Kênh đã đăng ký", false);
    }

    echo $videoGrid->create(null, "Nội dung sáng tạo", false);


    ?>
</div>


<?php require_once("includes/footer.php"); ?>
                