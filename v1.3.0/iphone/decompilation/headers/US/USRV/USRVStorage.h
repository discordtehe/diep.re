// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVSTORAGE_H
#define USRVSTORAGE_H


#import <Foundation/Foundation.h>

@class USRVJsonStorage;

@interface USRVStorage : USRVJsonStorage

@property (nonatomic) NSString *targetFileName; // ivar: _targetFileName
@property (nonatomic) NSInteger type; // ivar: _type


-(id)initWithLocation:(id)arg0 type:(NSInteger)arg1 ;
-(void)sendEvent:(id)arg0 values:(id)arg1 ;
-(void)initStorage;
-(BOOL)readStorage;
-(BOOL)writeStorage;
-(BOOL)clearStorage;
-(BOOL)storageFileExists;


@end


#endif