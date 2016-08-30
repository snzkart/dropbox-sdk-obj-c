///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBSHARINGFileAction;

#pragma mark - API Object

/// 
/// The FileAction union.
/// 
/// Sharing actions that may be taken on files.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGFileAction : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBSHARINGFileActionTag enum type represents the possible tag states with
/// which the DBSHARINGFileAction union can exist.
typedef NS_ENUM(NSInteger, DBSHARINGFileActionTag) {
    /// Change or edit contents of the file.
    DBSHARINGFileActionEditContents,

    /// Add a member with view permissions.
    DBSHARINGFileActionInviteViewer,

    /// Add a member with view permissions but no comment permissions.
    DBSHARINGFileActionInviteViewerNoComment,

    /// Stop sharing this file.
    DBSHARINGFileActionUnshare,

    /// Relinquish one's own membership to the file.
    DBSHARINGFileActionRelinquishMembership,

    /// Create a shared link to the file.
    DBSHARINGFileActionShareLink,

    /// (no description).
    DBSHARINGFileActionOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBSHARINGFileActionTag tag;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of EditContents.
/// 
/// About the EditContents tag state: Change or edit contents of the file.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithEditContents;

/// 
/// Initializes union class with tag state of InviteViewer.
/// 
/// About the InviteViewer tag state: Add a member with view permissions.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithInviteViewer;

/// 
/// Initializes union class with tag state of InviteViewerNoComment.
/// 
/// About the InviteViewerNoComment tag state: Add a member with view
/// permissions but no comment permissions.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithInviteViewerNoComment;

/// 
/// Initializes union class with tag state of Unshare.
/// 
/// About the Unshare tag state: Stop sharing this file.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithUnshare;

/// 
/// Initializes union class with tag state of RelinquishMembership.
/// 
/// About the RelinquishMembership tag state: Relinquish one's own membership to
/// the file.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithRelinquishMembership;

/// 
/// Initializes union class with tag state of ShareLink.
/// 
/// About the ShareLink tag state: Create a shared link to the file.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithShareLink;

/// 
/// Initializes union class with tag state of Other.
/// 
/// @return An initialized DBSHARINGFileAction instance.
/// 
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value EditContents.
/// 
/// @return Whether the union's current tag state has value EditContents.
/// 
- (BOOL)isEditContents;

/// 
/// Retrieves whether the union's current tag state has value InviteViewer.
/// 
/// @return Whether the union's current tag state has value InviteViewer.
/// 
- (BOOL)isInviteViewer;

/// 
/// Retrieves whether the union's current tag state has value
/// InviteViewerNoComment.
/// 
/// @return Whether the union's current tag state has value
/// InviteViewerNoComment.
/// 
- (BOOL)isInviteViewerNoComment;

/// 
/// Retrieves whether the union's current tag state has value Unshare.
/// 
/// @return Whether the union's current tag state has value Unshare.
/// 
- (BOOL)isUnshare;

/// 
/// Retrieves whether the union's current tag state has value
/// RelinquishMembership.
/// 
/// @return Whether the union's current tag state has value
/// RelinquishMembership.
/// 
- (BOOL)isRelinquishMembership;

/// 
/// Retrieves whether the union's current tag state has value ShareLink.
/// 
/// @return Whether the union's current tag state has value ShareLink.
/// 
- (BOOL)isShareLink;

/// 
/// Retrieves whether the union's current tag state has value Other.
/// 
/// @return Whether the union's current tag state has value Other.
/// 
- (BOOL)isOther;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBSHARINGFileAction union.
/// 
@interface DBSHARINGFileActionSerializer : NSObject 

/// 
/// Serializes DBSHARINGFileAction instances.
/// 
/// @param instance An instance of the DBSHARINGFileAction API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGFileAction API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGFileAction * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGFileAction instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGFileAction API object.
/// 
/// @return An instantiation of the DBSHARINGFileAction object.
/// 
+ (DBSHARINGFileAction * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
