<ul class="list-group">
    <? foreach ($pricing as $attribute => $value): ?>
        <li class="list-group-item"><?=$attribute?>:<?=$value?></li>
    <? endforeach ?>
</ul>