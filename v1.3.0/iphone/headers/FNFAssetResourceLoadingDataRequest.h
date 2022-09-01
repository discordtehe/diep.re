// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFASSETRESOURCELOADINGDATAREQUEST_H
#define FNFASSETRESOURCELOADINGDATAREQUEST_H


#import <Foundation/Foundation.h>


@interface FNFAssetResourceLoadingDataRequest : NSObject {
    id *_sendDataCallback;
}


@property (readonly, nonatomic) NSInteger requestedOffset; // ivar: _requestedOffset
@property (readonly, nonatomic) NSInteger requestedLength; // ivar: _requestedLength
@property (readonly, nonatomic) NSInteger currentOffset; // ivar: _currentOffset
@property (nonatomic) BOOL isAudio; // ivar: _isAudio
@property (nonatomic) BOOL firstRequest; // ivar: _firstRequest
@property (nonatomic) int sequenceIndex; // ivar: _sequenceIndex
@property (nonatomic) BOOL isForDiskCache; // ivar: _isForDiskCache
@property (nonatomic) BOOL isPredictive; // ivar: _isPredictive
@property (nonatomic) ? startTime; // ivar: _startTime
@property (nonatomic) ? duration; // ivar: _duration
@property (copy, nonatomic) NSString *streamFormat; // ivar: _streamFormat
@property (nonatomic) ? bufferDurationInSeconds; // ivar: _bufferDurationInSeconds
@property (nonatomic) BOOL isHeaderOnly; // ivar: _isHeaderOnly


// -(id)initWithRequestedOffset:(NSInteger)arg0 requestedLength:(NSInteger)arg1 dataCallback:(id)arg2 isPredictive:(unk)arg3  ;
-(void)respondWithData:(id)arg0 ;


@end


#endif