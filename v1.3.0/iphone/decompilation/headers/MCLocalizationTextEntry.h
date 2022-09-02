// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCLOCALIZATIONTEXTENTRY_H
#define MCLOCALIZATIONTEXTENTRY_H


#import <Foundation/Foundation.h>

@class MCLocalizationEntry;

@interface MCLocalizationTextEntry : MCLocalizationEntry

@property (readonly, nonatomic) NSString *localizedText; // ivar: _localizedText


-(id)initWithTextEntryId:(id)arg0 withLocalizedText:(id)arg1 ;
-(void)dealloc;
+(id)mcLocalizationTextEntryWithId:(id)arg0 withLocalizedText:(id)arg1 ;


@end


#endif