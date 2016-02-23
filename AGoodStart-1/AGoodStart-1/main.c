//
//  main.c
//  AGoodStart-1
//
//  Created by Apple on 16/1/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds)
{
    int necessaryMinutes = 15 +15 * pounds;
    printf("Cook for %d minutes.\n",necessaryMinutes);
    if (necessaryMinutes>120) {
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n",halfway,necessaryMinutes);
    }
}

int main(int argc, const char * argv[])
{
    int totalWeight = 10;
    int giblesMeight = 1;
    int turkeyWeight = totalWeight - giblesMeight;
    showCookTimeForTurkey(turkeyWeight);
    return 0;
}
