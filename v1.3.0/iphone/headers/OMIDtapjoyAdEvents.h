// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYADEVENTS_H
#define OMIDTAPJOYADEVENTS_H


#import <Foundation/Foundation.h>

@class OMIDtapjoyAdSession;

@interface OMIDtapjoyAdEvents : NSObject {
    OMIDtapjoyAdSession *_adSession;
}




-(id)initWithAdSession:(id)arg0 error:(*id)arg1 ;
-(BOOL)impressionOccurredWithError:(*id)arg0 ;
-(void)startSessionIfNeeded;


@end


#endif