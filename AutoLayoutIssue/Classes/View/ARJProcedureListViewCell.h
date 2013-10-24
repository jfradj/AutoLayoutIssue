//
//  ARJProcedureListViewCell.h
//  AutoLayoutIssue
//
//  Created by Johann Fradj on 28/07/13.
//  Copyright (c) 2013 AMedSU. All rights reserved.
//

@class ARJProcedure;

@interface ARJProcedureListViewCell : UITableViewCell

- (void)updateConstraintsForWitdh:(CGFloat)width;
- (void)setNotes:(NSString *)notes;

@end





