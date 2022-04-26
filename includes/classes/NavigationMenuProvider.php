<?php
class NavigationMenuProvider {

    private $con, $userLoggedInObj;

    public function __construct($con, $userLoggedInObj) {
        $this->con = $con;
        $this->userLoggedInObj = $userLoggedInObj;
    }

    public function create() {
        $menuHtml = $this->createNavItem("Trang chủ", "assets/images/icons/home.png", "index.php");
        $menuHtml .= $this->createNavItem("Kênh đăng ký", "assets/images/icons/subscriptions.png", "subscriptions.php");
        $menuHtml .= $this->createNavItem("Video đã thích", "assets/images/icons/thumb-up.png", "likedVideos.php");

        if(User::isLoggedIn()) {
            $menuHtml .= $this->createNavItem("Tùy chỉnh", "assets/images/icons/settings.png", "settings.php");
            $menuHtml .= $this->createNavItem("Đăng xuất", "assets/images/icons/logout.png", "logout.php");

            $menuHtml .= $this->createSubscriptionsSection();
        }

        return "<div class='navigationItems'>
                    $menuHtml
                </div>";
    }

    private function createNavItem($text, $icon, $link) {
        return "<div class='navigationItem'>
                    <a href='$link'>
                        <img src='$icon'>
                        <span>$text</span>
                    </a>
                </div>";
    }

    private function createSubscriptionsSection() {
        $subscriptions = $this->userLoggedInObj->getSubscriptions();

        $html = "<span class='heading'>Kênh đã đăng ký</span>";
        foreach($subscriptions as $sub) {
            $subUsername = $sub->getUsername();
            $html .= $this->createNavItem($subUsername, $sub->getProfilePic(), "profile.php?username=$subUsername");
        }
        return $html;
    }

}
?>