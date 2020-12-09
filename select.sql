select
        TRIM(TRAILING 'x' from
            nvl2(    項目A,項目A
                    ,nvl2(項目B      ,rtrim(to_char(項目B     ,'fm99999999999990.999'), '.')      || 'x'  ,null) ||
                     nvl2(項目C      ,rtrim(to_char(項目C     ,'fm99999999999990.999'), '.')      || 'x'  ,null) ||
                     nvl2(項目D      ,rtrim(to_char(項目D    ,'fm99999999999990.999'), '.')      || 'x'  ,null) ||
                     nvl2(項目E      ,項目E                                             || 'x'  ,null) ||
                     nvl2(項目F      ,rtrim(項目F     ,'fm99999999999990.999'), '.')              ,null)
                )
            )
into     L_XXX
from    dual;
