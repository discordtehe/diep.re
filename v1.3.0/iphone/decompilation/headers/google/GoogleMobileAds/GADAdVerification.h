// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVERIFICATION_H
#define GADADVERIFICATION_H


#import <Foundation/Foundation.h>

@class GADOMIDSDK;
@class GADOMIDPartner;

@interface GADAdVerification : NSObject {
    Class _GADOMIDPartner;
    Class _GADOMIDSDK;
    Class _GADOMIDAdSessionConfiguration;
    Class _GADOMIDAdSessionContext;
    Class _GADOMIDAdSession;
    Class _GADOMIDAdEvents;
    GADOMIDSDK *_sharedGADOMID;
}


@property (readonly, nonatomic) NSString *OMIDVersion;
@property (retain, nonatomic) GADOMIDPartner *partner; // ivar: _partner


-(id)init;
-(id)adSessionForWebViewController:(id)arg0 mediaType:(NSInteger)arg1 ;
-(id)adEventsForSession:(id)arg0 ;
+(id)sharedInstance;


@end


#endif