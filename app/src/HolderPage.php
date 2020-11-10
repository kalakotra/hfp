<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Forms\CheckboxField;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Assets\Image;
	use SilverStripe\AssetAdmin\Forms\UploadField;
	use Bummzack\SortableFile\Forms\SortableUploadField;
	use SilverStripe\Forms\GridField\GridField;
	use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
	use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

    class HolderPage extends Page
    {
        private static $allowed_children = [
            "ArticlePage"
        ];

        private static $icon_class = 'font-icon-p-articles';

        private static $db = [
        ];

        private static $has_many = [
        	
        ];

        private static $many_many = [
        ];

        private static $many_many_extraFields = [
        ];

        private static $owns = [
        ];

        public function getCMSFields() {
        	$fields = parent::getCMSFields();

        	$fields->removeFieldFromTab("Root", "ContentBox");

        	$fields->removeFieldsFromTab("Root.Main", [
        		"MenuTitle",
                "Video"
        	]);

        	return $fields;
        }
    }
}
