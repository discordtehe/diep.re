// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SIMPLEALERT_H
#define SIMPLEALERT_H


#import <Foundation/Foundation.h>


@interface SimpleAlert : NSObject {
    id *mAlertView;
}




-(id)createIOS7View:(id)arg0 ;
-(void)showWithMessage:(id)arg0 ;
-(void)dismiss;
-(BOOL)isShowing;
+(id)sharedSimpleAlert;
+(BOOL)isSimpleAlertInitialized;
+(void)releaseSharedSimpleAlert;


@end


#endif