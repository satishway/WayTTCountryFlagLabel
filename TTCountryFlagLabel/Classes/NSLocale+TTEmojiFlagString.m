//
//  NSLocale+TTEmojiFlagString.m
//  TTCountryFlagLabel
//
//  Created by Dhiraj Gupta on 7/13/16.
//
//

#import "NSLocale+TTEmojiFlagString.h"

@implementation NSLocale (TTEmojiFlagString)

+ (NSString *)emojiFlagForISOCountryCode:(NSString *)countryCode {
    if (countryCode.length != 2) {
        return nil;
    }
    
    NSMutableString *flag = [NSMutableString string];
    for (int i = 0; i < countryCode.length; i++) {
        unichar character = [countryCode characterAtIndex:i];
        [flag appendString:[NSString stringWithFormat:@"%C", (unichar)(character + 127397)]];
    }
    
    return flag;
}

@end 