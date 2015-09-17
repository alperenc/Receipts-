//
//  Receipt+CoreDataProperties.h
//  Receipts++
//
//  Created by Alp Eren Can on 17/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Receipt.h"

NS_ASSUME_NONNULL_BEGIN

@interface Receipt (CoreDataProperties)

@property (nonatomic) float amount;
@property (nullable, nonatomic, retain) NSString *desc;
@property (nonatomic) NSDate *timeStamp;
@property (nullable, nonatomic, retain) NSSet<Tag *> *relationship;

@end

@interface Receipt (CoreDataGeneratedAccessors)

- (void)addRelationshipObject:(Tag *)value;
- (void)removeRelationshipObject:(Tag *)value;
- (void)addRelationship:(NSSet<Tag *> *)values;
- (void)removeRelationship:(NSSet<Tag *> *)values;

@end

NS_ASSUME_NONNULL_END
