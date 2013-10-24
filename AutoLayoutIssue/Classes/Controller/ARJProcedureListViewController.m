//
//  ARJProcedureListViewController.m
//  AutoLayoutIssue
//
//  Created by Johann Fradj on 21/07/13.
//  Copyright (c) 2013 AMedSU. All rights reserved.
//

#import "ARJProcedureListViewController.h"
#import "ARJProcedureListViewCell.h"


static NSString *cellIdentifier = @"cell";


@interface ARJProcedureListViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end


@implementation ARJProcedureListViewController

- (id)initForPatient:(ARJPatient *)patient
{
    self = [super initWithNibName:nil bundle:nil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"ARJProcedureListViewCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier];
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ARJProcedureListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    [cell setNotes:@"This content should be displayed on multiple lines if needed. This sentence will be 1 line in landscape and 2 in portrait!"];
    [cell updateConstraintsForWitdh:self.view.bounds.size.width];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    [cell.contentView setNeedsLayout];
    [cell.contentView layoutIfNeeded];
 
    return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ARJProcedureListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    [cell setNotes:@"This content should be displayed on multiple lines if needed. This sentence will be 1 line in landscape and 2 in portrait!"];
    [cell updateConstraintsForWitdh:self.view.bounds.size.width];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    [cell.contentView setNeedsLayout];
    [cell.contentView layoutIfNeeded];
 
    return [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
}

@end
