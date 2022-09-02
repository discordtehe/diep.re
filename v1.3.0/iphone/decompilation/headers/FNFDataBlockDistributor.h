// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDATABLOCKDISTRIBUTOR_H
#define FNFDATABLOCKDISTRIBUTOR_H

@protocol FBDataBlockConsumer;

#import <Foundation/Foundation.h>


@interface FNFDataBlockDistributor : NSObject {
    mutex _lock;
    map<FBDataSegment, NSData *, cmpOfDataSegment, std::__1::allocator<std::__1::pair<const FBDataSegment, NSData *> > > _dataSegments;
    BOOL activeHeads;
    NSUInteger starvingHeads;
    NSUInteger heads;
    char * stitches;
}


@property (weak, nonatomic) NSObject<FBDataBlockConsumer> *consumer; // ivar: _consumer


-(id)description;
-(void)deliverData:(id)arg0 withOffset:(NSUInteger)arg1 ;
-(void)addHeadType:(NSUInteger)arg0 withOffset:(NSUInteger)arg1 ;
-(void)removeHeadType:(NSUInteger)arg0 ;
-(void)moveHeadTo:(NSUInteger)arg0 withHeadType:(NSUInteger)arg1 ;
-(char *)bytesAtHead:(NSUInteger)arg0 withHeadType:(NSUInteger)arg1 ;
-(char *)_unlockedBytesAtHead:(NSUInteger)arg0 withHeadType:(NSUInteger)arg1 ;
-(NSUInteger)offsetForHeadType:(NSUInteger)arg0 ;
-(NSUInteger)availableOffsetForHeadType:(NSUInteger)arg0 ;
-(void)dealloc;


@end


#endif