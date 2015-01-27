<?php
<ul class="list-group">
    <? foreach ($portfolio as $attribute => $value): ?>
    <li class="list-group-item"><?=$attribute?>:<?=$value?></li>
<? endforeach ?>
</ul>