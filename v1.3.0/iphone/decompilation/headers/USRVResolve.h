// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVRESOLVE_H
#define USRVRESOLVE_H


#import <Foundation/Foundation.h>


@interface USRVResolve : NSObject

@property (retain, nonatomic) NSString *hostName; // ivar: _hostName
@property (retain, nonatomic) NSString *address; // ivar: _address
@property (retain, nonatomic) NSCondition *blockCondition; // ivar: _blockCondition
@property (retain, nonatomic) NSString *error; // ivar: _error
@property (retain, nonatomic) NSString *errorMessage; // ivar: _errorMessage
@property (nonatomic) BOOL canceled; // ivar: _canceled


-(id)initWithHostName:(id)arg0 ;
-(void)resolve;
-(void)openBlock;
-(void)cancel;


@end


#endif