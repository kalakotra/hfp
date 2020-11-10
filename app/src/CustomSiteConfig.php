<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Control\Director;
use Bummzack\SortableFile\Forms\SortableUploadField;

class CustomSiteConfig extends DataExtension 
{

    private static $db = [
        'FooterLeft' => 'HTMLText',
        'FooterRight' => 'HTMLText'
    ];

    private static $has_one = [
    ];

    private static $has_many = [
    ];

    private static $many_many = [
    ];

    private static $many_many_extraFields = [
    ];

    private static $owns = [
    ];

    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldsToTab("Root.Footer", [
            HTMLEditorField::create("FooterLeft"),
            HTMLEditorField::create("FooterRight")
        ]);
    }
}
