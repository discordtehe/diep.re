// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYOPTIONS_H
#define ADCOLONYOPTIONS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class AdColonyUserMetadata;

@interface AdColonyOptions : NSObject {
    NSMutableDictionary *_options;
}


@property (retain, nonatomic) AdColonyUserMetadata *userMetadata; // ivar: _userMetadata


-(BOOL)boolOptionForKey:(id)arg0 ;
-(id)stringOptionForKey:(id)arg0 ;
-(id)numberOptionForKey:(id)arg0 ;
-(id)arrayOptionForKey:(id)arg0 ;
-(id)optionForKey:(id)arg0 type:(Class)arg1 ;
-(id)getUserMetadata;
-(id)getOptions;
-(void)setOptions:(id)arg0 ;
-(id)init;
-(BOOL)setOption:(id)arg0 withStringValue:(id)arg1 lengthCheck:(BOOL)arg2 ;
-(BOOL)setOption:(id)arg0 withStringValue:(id)arg1 ;
-(BOOL)setOption:(id)arg0 withNumericValue:(id)arg1 ;
-(id)getStringOptionWithKey:(id)arg0 ;
-(id)getNumericOptionWithKey:(id)arg0 ;


@end


#endif