// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBASSETLINEARREADER_H
#define FBASSETLINEARREADER_H


#import <Foundation/Foundation.h>

@class FNFDataBlockDistributor;
@protocol FNFMp4StreamingReader;

@interface FBAssetLinearReader : NSObject <FNFMp4StreamingReader>

 {
    FNFDataBlockDistributor *_dataDistributor;
    NSUInteger _offset;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDataDistributor:(id)arg0 ;
-(void)moveHead:(NSUInteger)arg0 ;
-(BOOL)hasEnoughDataForBytes:(NSUInteger)arg0 ;
-(char *)bytesAtHead:(NSInteger)arg0 ;
-(NSUInteger)offset;
-(void)setOffset:(NSUInteger)arg0 ;


@end


#endif