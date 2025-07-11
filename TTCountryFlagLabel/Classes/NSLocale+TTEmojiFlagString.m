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
    NSAssert(countryCode.length == 2, @"Expecting ISO country code");
    
    int base = 127462 -65;
    
    wchar_t bytes[2] = {
        base +[countryCode characterAtIndex:0],
        base +[countryCode characterAtIndex:1]
    };
    
    return [[NSString alloc] initWithBytes:bytes
                                    length:countryCode.length *sizeof(wchar_t)
                                  encoding:NSUTF32LittleEndianStringEncoding];
}
@end
