<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Assets\Image;
	use SilverStripe\AssetAdmin\Forms\UploadField;

    class ArticlePage extends Page
    {
        private static $can_be_root = false;

        private static $icon_class = 'font-icon-p-document';

        private static $db = [
            "PreviewTitle" => "Varchar",
            "PreviewText" => "HTMLText"
        ];

        private static $has_one = [
            "PreviewImage" => Image::class
        ];

        private static $many_many = [
        ];

        private static $many_many_extraFields = [
        ];

        private static $owns = [
            "PreviewImage"
        ];

        public function getCMSFields() {
            $fields = parent::getCMSFields();

            $fields->addFieldsToTab("Root.Preview", [
                TextField::create("PreviewTitle", "Title"),
                HTMLEditorField::create("PreviewText", "Text"),
                UploadField::create("PreviewImage", "Image")
            ]);

            return $fields;
        }
    }
}
