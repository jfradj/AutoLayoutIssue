//
//  ARJProcedureListViewCell.m
//  AutoLayoutIssue
//
//  Created by Johann Fradj on 28/07/13.
//  Copyright (c) 2013 AMedSU. All rights reserved.
//

#import "ARJProcedureListViewCell.h"


@interface ARJProcedureListViewCell ()

@property (nonatomic, weak) IBOutlet UIImageView *leftPhotoImageView;

@property (nonatomic, weak) IBOutlet UIView *notesView;
@property (nonatomic, weak) IBOutlet UILabel *notesTitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *notesLabel;

@end


@implementation ARJProcedureListViewCell

- (void)awakeFromNib
{
    self.leftPhotoImageView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    self.notesTitleLabel.text = NSLocalizedString(@"Notes:", nil);
}

- (void)updateConstraintsForWitdh:(CGFloat)width
{
    UIView *v = self.leftPhotoImageView;
    [v removeConstraints:[v constraints]];
    [v addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"[v(%f)]", (width / 3.0)]
                                                              options:0
                                                              metrics:nil
                                                                views:NSDictionaryOfVariableBindings(v)]];
    [v addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:[v(%f)]", ((342.0 / 256.0) * (width / 3.0))]
                                                              options:0
                                                              metrics:nil
                                                                views:NSDictionaryOfVariableBindings(v)]];
    
    self.notesLabel.preferredMaxLayoutWidth = width - self.notesTitleLabel.bounds.size.width - ((3 * 8) + (2 * 16));
}

- (void)setNotes:(NSString *)notes
{
    self.notesLabel.text = notes;
}

@end
