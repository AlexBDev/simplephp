<?php
declare(strict_types=1);

namespace Tests\Unit\App;

use App\Dummy;
use PHPUnit\Framework\TestCase;

class DummyTest extends TestCase
{
    public function testDummy()
    {
        $this->assertEquals('dummy', (new Dummy())->dummy());
    }
}
