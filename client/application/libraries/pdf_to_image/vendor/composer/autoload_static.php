<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit93d7d11ea386ab958346954169d04dcc
{
    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Spatie\\PdfToImage\\' => 18,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Spatie\\PdfToImage\\' => 
        array (
            0 => __DIR__ . '/..' . '/spatie/pdf-to-image/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit93d7d11ea386ab958346954169d04dcc::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit93d7d11ea386ab958346954169d04dcc::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
