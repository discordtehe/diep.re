// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCORELOCALSTORAGE_H
#define GADJSCORELOCALSTORAGE_H


#import <Foundation/Foundation.h>

@protocol GADJSCoreLocalStorageProtocol;

@interface GADJSCoreLocalStorage : NSObject <GADJSCoreLocalStorageProtocol>





-(id)itemForKey:(id)arg0 ;
-(void)setItemForKey:(id)arg0 item:(id)arg1 ;
-(void)removeItemForKey:(id)arg0 ;
-(void)clear;


@end


#endif