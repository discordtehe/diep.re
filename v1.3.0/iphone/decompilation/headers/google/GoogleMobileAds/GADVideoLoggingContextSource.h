// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOLOGGINGCONTEXTSOURCE_H
#define GADVIDEOLOGGINGCONTEXTSOURCE_H


#import <Foundation/Foundation.h>

@class GADEventContext;
@protocol GADEventContextSource;

@interface GADVideoLoggingContextSource : NSObject <GADEventContextSource>

 {
    GADEventContext *_context;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithWebAdView:(id)arg0 ;


@end


#endif