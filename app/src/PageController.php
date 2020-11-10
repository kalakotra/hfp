<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\View\Requirements;
    use SilverStripe\View\SSViewer;
    use SilverStripe\ORM\ArrayList;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/

            $myThemes = SSViewer::get_themes();
            $myThemePath = "themes/".$myThemes[1]."/";

            Requirements::css($myThemePath.'css/scss/bootstrap.scss');

            Requirements::backend()->setWriteHeaderComment(false);
            $css = [];
            $css[] = $myThemePath.'css/all.min.css';
            $css[] = $myThemePath.'css/aos.css';
            $css[] = $myThemePath.'css/layout.css';
            $css[] = $myThemePath.'css/jquery.fancybox.min.css';
            $css[] = $myThemePath.'css/fonts.css';
            $css[] = $myThemePath.'css/hamburgers.min.css';
            $css[] = $myThemePath.'css/editor.css';
            Requirements::combine_files('styles.css', $css, ["async"=>true, "defer" => true]);
            Requirements::process_combined_files();

            $js = [];
            $js[] = $myThemePath.'javascript/jquery-3.5.1.min.js';
            Requirements::combine_files('jquery.js', $js);
            Requirements::process_combined_files();

            $js = [];
            $js[] = $myThemePath.'javascript/popper.min.js';
            $js[] = $myThemePath.'javascript/bootstrap.min.js';
            $js[] = $myThemePath.'javascript/aos.js';
            $js[] = $myThemePath.'javascript/jquery.fancybox.min.js';
            $js[] = $myThemePath.'javascript/script.js';
            Requirements::combine_files('javascripts.js', $js, ["async"=>true, "defer" => true]);
            Requirements::process_combined_files();
        }

        public function getAllMenu($level = 1)
        {
            if ($level == 1) {
                $result = SiteTree::get()->filter([
                    "ParentID" => 0,
                ]);
            } else {
                $parent = $this->data();
                $stack = [$parent];

                if ($parent) {
                    while (($parent = $parent->Parent()) && $parent->exists()) {
                        array_unshift($stack, $parent);
                    }
                }

                if (isset($stack[$level - 2])) {
                    $result = $stack[$level - 2]->Children();
                }
            }

            $visible = [];

            // Remove all entries the can not be viewed by the current user
            // We might need to create a show in menu permission
            if (isset($result)) {
                foreach ($result as $page) {
                    /** @var SiteTree $page */
                    if ($page->canView()) {
                        $visible[] = $page;
                    }
                }
            }

            return new ArrayList($visible);
        }

        public function AllMenu($level)
        {
            return $this->getAllMenu($level);
        }
    }
}
