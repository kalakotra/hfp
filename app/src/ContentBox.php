<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;

class ContentBox extends DataObject
{

	private static $default_sort = "Sort";

    private static $db = [
        'Title' => 'Varchar',
        'Subtitle' => 'Varchar',
        'Text' => 'HTMLText',
        'Sort' => 'Int'
    ];

    private static $has_one = [
        'Page' => Page::class,
        'Image' => Image::class,
        'PageLink' => SiteTree::class
    ];

    private static $many_many = [
    	
    ];

    private static $many_many_extraFields = [
    	
    ];

    private static $owns = [
        'Image'
    ];

    public function getCMSFields() {
    	$fields = parent::getCMSFields();

        $fields->removeFieldFromTab("Root.Main", "Sort");

    	return $fields;
    }
}
