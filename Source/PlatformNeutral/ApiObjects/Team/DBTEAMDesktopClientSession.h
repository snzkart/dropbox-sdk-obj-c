///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"
#import "DBTEAMDeviceSession.h"

@class DBTEAMDesktopClientSession;
@class DBTEAMDesktopPlatform;

#pragma mark - API Object

/// 
/// The DesktopClientSession struct.
/// 
/// Information about linked Dropbox desktop client sessions
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMDesktopClientSession : DBTEAMDeviceSession <DBSerializable> 

#pragma mark - Instance fields

/// Name of the hosting desktop
@property (nonatomic, readonly, copy) NSString * _Nonnull hostName;

/// The Dropbox desktop client type
@property (nonatomic, readonly) DBTEAMDesktopPlatform * _Nonnull clientType;

/// The Dropbox client version
@property (nonatomic, readonly, copy) NSString * _Nonnull clientVersion;

/// Information on the hosting platform
@property (nonatomic, readonly, copy) NSString * _Nonnull platform;

/// Whether it's possible to delete all of the account files upon unlinking
@property (nonatomic, readonly, copy) NSNumber * _Nonnull isDeleteOnUnlinkSupported;

#pragma mark - Constructors

/// 
/// Full constructor for the DBTEAMDesktopClientSession struct (exposes all
/// instance variables).
/// 
/// @param sessionId The session id
/// @param hostName Name of the hosting desktop
/// @param clientType The Dropbox desktop client type
/// @param clientVersion The Dropbox client version
/// @param platform Information on the hosting platform
/// @param isDeleteOnUnlinkSupported Whether it's possible to delete all of the
/// account files upon unlinking
/// @param ipAddress The IP address of the last activity from this session
/// @param country The country from which the last activity from this session
/// was made
/// @param created The time this session was created
/// @param updated The time of the last activity from this session
/// 
/// @return An initialized DBTEAMDesktopClientSession instance.
/// 
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId hostName:(NSString * _Nonnull)hostName clientType:(DBTEAMDesktopPlatform * _Nonnull)clientType clientVersion:(NSString * _Nonnull)clientVersion platform:(NSString * _Nonnull)platform isDeleteOnUnlinkSupported:(NSNumber * _Nonnull)isDeleteOnUnlinkSupported ipAddress:(NSString * _Nullable)ipAddress country:(NSString * _Nullable)country created:(NSDate * _Nullable)created updated:(NSDate * _Nullable)updated;

/// 
/// Convenience constructor for the DBTEAMDesktopClientSession struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param sessionId The session id
/// @param hostName Name of the hosting desktop
/// @param clientType The Dropbox desktop client type
/// @param clientVersion The Dropbox client version
/// @param platform Information on the hosting platform
/// @param isDeleteOnUnlinkSupported Whether it's possible to delete all of the
/// account files upon unlinking
/// 
/// @return An initialized DBTEAMDesktopClientSession instance.
/// 
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId hostName:(NSString * _Nonnull)hostName clientType:(DBTEAMDesktopPlatform * _Nonnull)clientType clientVersion:(NSString * _Nonnull)clientVersion platform:(NSString * _Nonnull)platform isDeleteOnUnlinkSupported:(NSNumber * _Nonnull)isDeleteOnUnlinkSupported;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DesktopClientSession struct.
/// 
@interface DBTEAMDesktopClientSessionSerializer : NSObject 

/// 
/// Serializes DBTEAMDesktopClientSession instances.
/// 
/// @param instance An instance of the DBTEAMDesktopClientSession API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMDesktopClientSession API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMDesktopClientSession * _Nonnull)instance;

/// 
/// Deserializes DBTEAMDesktopClientSession instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMDesktopClientSession API object.
/// 
/// @return An instantiation of the DBTEAMDesktopClientSession object.
/// 
+ (DBTEAMDesktopClientSession * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
