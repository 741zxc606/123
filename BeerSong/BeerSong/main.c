//
//  main.c
//  BeerSong
//
//  Created by Apple on 16/1/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if(numberOfBottles == 0){
        printf("There are simply no more bottles of beer on the wall.\n");
    }else{
        printf("%d bottles of beer on the wall. %d bottles of beer.\n",
               numberOfBottles,numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down,pass it around,%d bottles of beer on the wall.\n",
               oneFewer);
        singTheSong(oneFewer);//函数调用自己

        //在函数结束之前打印出一条信息
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n",
               numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{
    // 当然可以按照本来的歌词让它唱99句，但是4句更加简洁明了
    singTheSong(4);
    return 0;
}
