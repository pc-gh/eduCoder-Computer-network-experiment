for((k=1;k<=3;k++)) 
do   
    if [ -f "second/R{k}_i{k}_startup-config.cfg" ];then
    
        grep -C0 "hostname\|route" second/R${k}_i${k}_startup-config.cfg
    else
        if [ -f "second/R${k}_configs_i${k}_startup-config.cfg" ];then
            grep -C0 "hostname\|route" second/R${k}_configs_i${k}_startup-config.cfg
        else
		grep -C0 "hostname\|route" second/R${k}_i${k}_startup-config.cfg
           #echo "请检查你是否将R$k的配置文件导入second目录下"
        fi
    fi
done  
