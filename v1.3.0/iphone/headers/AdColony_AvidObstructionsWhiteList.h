// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDOBSTRUCTIONSWHITELIST_H
#define ADCOLONY_AVIDOBSTRUCTIONSWHITELIST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AdColony_AvidObstructionsWhiteList : NSObject {
    NSMutableArray *_whiteList;
}


@property (readonly, nonatomic) NSArray *whiteList;


-(id)init;
-(void)addView:(id)arg0 ;
-(BOOL)containsView:(id)arg0 ;


@end


#endif