<?php

namespace App\Services\Mt940\Parser\Banking\Mt940\Engine;

class Coba extends \Kingsquare\Parser\Banking\Mt940\Engine\Coba
{
    public function __construct()
    {
        static::$registeredEngines[400] = self::class;
    }

    /**
     * @return array
     */
    protected function parseStatementAccount()
    {
        return [
            0 => 'Sparkasse Hannover',
            1 => parent::parseStatementAccount()
        ];
    }
}