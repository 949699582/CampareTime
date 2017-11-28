//
//  CampareTime.m
//  Project_Camera
//
//  Created by 949699582 on 2017/11/16.
//  Copyright © 2017年 949699582. All rights reserved.
//

#import "CampareTime.h"

@implementation CampareTime

+ (float)getTotalTimeWithStartTime:(NSString *)startTime endTime:(NSString *)endTime{
    //按照日期格式创建日期格式句柄
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    [dateFormatter setTimeZone:localTimeZone];
    //将日期字符串转换成Date类型
    NSDate *startDate = [dateFormatter dateFromString:startTime];
    NSDate *endDate = [dateFormatter dateFromString:endTime];
    //将日期转换成时间戳
    NSTimeInterval start = [startDate timeIntervalSince1970]*1;
    NSTimeInterval end = [endDate timeIntervalSince1970]*1;
    NSTimeInterval value = end - start;
    /*
     //计算具体的天，时，分，秒
    int second = (int)value %60;//秒
    int minute = (int)value / 60 % 60;
    int house = (int)value / 3600;
    int day = (int)value / (24 * 3600);
    //将获取的int数据重新转换成字符串
    NSString *str;
    if (day != 0) {
        str = [NSString stringWithFormat:@"%d天%d小时%d分%d秒",day,house,minute,second];
    }else if (day==0 && house != 0) {
        str = [NSString stringWithFormat:@"%d小时%d分%d秒",house,minute,second];
    }else if (day== 0 && house== 0 && minute!=0) {
        str = [NSString stringWithFormat:@"%d分%d秒",minute,second];
    }else{
        str = [NSString stringWithFormat:@"%d秒",second];
    }
    //返回string类型的总时长
     */
    return value;
}


@end
