///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBFILESUploadSessionStartArg;

#pragma mark - API Object

/// 
/// The UploadSessionStartArg struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBFILESUploadSessionStartArg : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// If true, the current session will be closed, at which point you won't be
/// able to call uploadSessionAppendV2 anymore with the current session.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull close;

#pragma mark - Constructors

/// 
/// Full constructor for the DBFILESUploadSessionStartArg struct (exposes all
/// instance variables).
/// 
/// @param close If true, the current session will be closed, at which point you
/// won't be able to call :route:`upload_session/append_v2` anymore with the
/// current session.
/// 
/// @return An initialized DBFILESUploadSessionStartArg instance.
/// 
- (nonnull instancetype)initWithClose:(NSNumber * _Nullable)close;

/// 
/// Convenience constructor for the DBFILESUploadSessionStartArg struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// 
/// @return An initialized DBFILESUploadSessionStartArg instance.
/// 
- (nonnull instancetype)init;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the UploadSessionStartArg struct.
/// 
@interface DBFILESUploadSessionStartArgSerializer : NSObject 

/// 
/// Serializes DBFILESUploadSessionStartArg instances.
/// 
/// @param instance An instance of the DBFILESUploadSessionStartArg API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBFILESUploadSessionStartArg API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBFILESUploadSessionStartArg * _Nonnull)instance;

/// 
/// Deserializes DBFILESUploadSessionStartArg instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBFILESUploadSessionStartArg API object.
/// 
/// @return An instantiation of the DBFILESUploadSessionStartArg object.
/// 
+ (DBFILESUploadSessionStartArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
