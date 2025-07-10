//
//  NSLocale+TTEmojiFlagString.h
//  TTCountryFlagLabel
//
//  Created by Dhiraj Gupta on 7/13/16.
//
//

#import <Foundation/Foundation.h>

@interface NSLocale (TTEmojiFlagString)

+ (NSString *)emojiFlagForISOCountryCode:(NSString *)countryCode;

@end 