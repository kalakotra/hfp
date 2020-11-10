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

    class Page extends SiteTree
    {
        private static $db = [
        	"TopMenu" => "Boolean",
        	"MainTitle" => "Varchar",
        	"SubTitle" => "Varchar",
        	"Video" => "Varchar"
        ];

        private static $has_many = [
        	'ContentBox' => ContentBox::class
        ];

        private static $many_many = [
        	'HeaderImage' => Image::class
        ];

        private static $many_many_extraFields = [
        	'HeaderImage' => ['SortOrder'=>'Int']
        ];

        private static $owns = [
        	'HeaderImage'
        ];

        public function getSettingsFields() {
        	$fields = parent::getSettingsFields();

        	$fields->addFIeldToTab("Root.Settings", CheckboxField::create("TopMenu"), "ShowInMenus");

        	return $fields;
        } 

        public function getCMSFields() {
        	$fields = parent::getCMSFields();

        	$fields->removeFieldFromTab("Root.Main", "MenuTitle");

        	$fields->addFieldsToTab("Root.Main", [
        		TextField::create("MainTitle"),
        		TextField::create("SubTitle"),
        		TextField::create("Video", "Video code")
        	], "Content");

        	$fields->addFieldToTab("Root.Header", SortableUploadField::create("HeaderImage"));

        	$gridConfig = GridFieldConfig_RecordEditor::create();
            $gridConfig->addComponent(GridFieldOrderableRows::create());

            $gridField = GridField::create("ContentBox", "ContentBox", $this->ContentBox(), $gridConfig);

            $fields->addFieldToTab("Root.ContentBox", $gridField);

        	return $fields;
        }
    }
}
