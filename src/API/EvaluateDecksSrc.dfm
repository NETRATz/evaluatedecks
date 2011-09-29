object EvaluateDecksForm: TEvaluateDecksForm
  Left = 0
  Top = 0
  Caption = 'Evaluate Decks'
  ClientHeight = 648
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object PC: TcxPageControl
    Left = 0
    Top = 0
    Width = 852
    Height = 648
    ActivePage = tsMin
    Align = alClient
    Rotate = True
    ShowFrame = True
    TabOrder = 0
    TabPosition = tpLeft
    ClientRectBottom = 647
    ClientRectLeft = 67
    ClientRectRight = 851
    ClientRectTop = 1
    object tsMin: TcxTabSheet
      Caption = 'Minimalistic'
      ImageIndex = 6
      DesignSize = (
        784
        646)
      object gTop: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 778
        Height = 257
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object vTop: TcxGridTableView
          OnKeyDown = vTopKeyDown
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = vTopCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = vTopDataControllerRecordChanged
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          object vTopID: TcxGridColumn
            Caption = 'ID'
            DataBinding.ValueType = 'Integer'
            Visible = False
            Options.Editing = False
            Width = 35
          end
          object vTopName: TcxGridColumn
            Tag = 111
            Caption = 'Card name'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsEditFixedList
            Properties.OnValidate = vTopNamePropertiesValidate
            Width = 150
          end
          object vTopFaction: TcxGridColumn
            Caption = 'Faction'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
            Width = 90
          end
          object vTopWait: TcxGridColumn
            Caption = 'Wait'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vTopAttack: TcxGridColumn
            Caption = 'Attack'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vTopHealth: TcxGridColumn
            Caption = 'Health'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vTopSkills: TcxGridColumn
            Caption = 'Skills'
            Options.Editing = False
            Width = 230
          end
        end
        object gTopLevel1: TcxGridLevel
          GridView = vTop
        end
      end
      object cbUseHidden: TcxCheckBox
        Left = 3
        Top = 3
        Caption = 'Allow hidden cards'
        Enabled = False
        State = cbsChecked
        TabOrder = 1
        OnClick = cbUseHiddenClick
        Width = 121
      end
      object cbOneLineSkills: TcxCheckBox
        Left = 130
        Top = 3
        Caption = 'Display skills in one line'
        State = cbsChecked
        TabOrder = 2
        Width = 143
      end
      object lmCustom: TcxLabel
        Left = 3
        Top = 287
        Caption = 'Load custom deck: '
      end
      object lmMission: TcxLabel
        Left = 3
        Top = 314
        Caption = 'Load mission deck: '
      end
      object cbmCustom: TcxComboBox
        Left = 97
        Top = 286
        Properties.DropDownListStyle = lsFixedList
        TabOrder = 5
        Width = 182
      end
      object cbmMission: TcxComboBox
        Left = 97
        Top = 313
        Properties.DropDownListStyle = lsFixedList
        TabOrder = 6
        Width = 246
      end
      object cbmUseRaid: TcxCheckBox
        Left = 3
        Top = 340
        Caption = 'Use raid deck for defence:'
        TabOrder = 7
        OnClick = cbmUseRaidClick
        Width = 152
      end
      object cbmRaid: TcxComboBox
        Left = 161
        Top = 340
        Properties.DropDownListStyle = lsFixedList
        TabOrder = 8
        Width = 182
      end
      object bmMission: TcxButton
        Left = 349
        Top = 313
        Width = 73
        Height = 21
        Caption = 'As defence'
        TabOrder = 9
        OnClick = bmMissionClick
      end
      object bmCustomDefence: TcxButton
        Left = 349
        Top = 286
        Width = 73
        Height = 21
        Caption = 'As defence'
        TabOrder = 10
        OnClick = bmCustomDefenceClick
      end
      object bmCustomAttack: TcxButton
        Left = 285
        Top = 286
        Width = 58
        Height = 21
        Caption = 'As attack'
        TabOrder = 11
        OnClick = bmCustomAttackClick
      end
      object gBot: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 367
        Width = 778
        Height = 276
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 12
        object vBot: TcxGridTableView
          OnKeyDown = vBotKeyDown
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = vTopCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = vBotDataControllerRecordChanged
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          object vBotID: TcxGridColumn
            Caption = 'ID'
            DataBinding.ValueType = 'Integer'
            Visible = False
            Options.Editing = False
            Width = 35
          end
          object vBotName: TcxGridColumn
            Tag = 111
            Caption = 'Card name'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsEditFixedList
            Properties.OnValidate = vBotNamePropertiesValidate
            Width = 150
          end
          object vBotFaction: TcxGridColumn
            Caption = 'Faction'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
            Width = 90
          end
          object vBotWait: TcxGridColumn
            Caption = 'Wait'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vBotAttack: TcxGridColumn
            Caption = 'Attack'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vBotHealth: TcxGridColumn
            Caption = 'Health'
            DataBinding.ValueType = 'Smallint'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            Options.Editing = False
          end
          object vBotSkills: TcxGridColumn
            Caption = 'Skills'
            Options.Editing = False
            Width = 230
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = vBot
        end
      end
      object bSaveTop: TcxButton
        Left = 428
        Top = 286
        Width = 93
        Height = 21
        Caption = 'Save top deck'
        TabOrder = 13
        OnClick = bSaveTopClick
      end
      object bSaveBot: TcxButton
        Left = 428
        Top = 340
        Width = 93
        Height = 21
        Caption = 'Save bottom deck'
        TabOrder = 14
        OnClick = bSaveBotClick
      end
      object bTopVisual: TcxButton
        Left = 527
        Top = 286
        Width = 93
        Height = 21
        Caption = 'To visual'
        Enabled = False
        TabOrder = 15
        OnClick = bTopVisualClick
      end
      object bBotVisual: TcxButton
        Left = 527
        Top = 340
        Width = 93
        Height = 21
        Caption = 'To visual'
        Enabled = False
        TabOrder = 16
        OnClick = bBotVisualClick
      end
    end
    object tsDecks: TcxTabSheet
      Caption = 'Visual'
      ImageIndex = 0
      OnShow = tsDecksShow
      object rPanel: TPanel
        Left = 434
        Top = 0
        Width = 350
        Height = 646
        Align = alRight
        BevelOuter = bvSpace
        Caption = 'rPanel'
        TabOrder = 0
        object sbRight: TScrollBox
          Left = 1
          Top = 123
          Width = 348
          Height = 522
          HorzScrollBar.Visible = False
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          TabStop = True
          OnMouseWheel = sbRightMouseWheel
        end
        object pLibTop: TPanel
          Left = 1
          Top = 1
          Width = 348
          Height = 122
          Align = alTop
          BevelOuter = bvSpace
          TabOrder = 1
          object cbFaction: TcxComboBox
            Left = 119
            Top = 8
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any faction'
              'Imperial'
              'Raider'
              'Bloodthirsty'
              'Xeno'
              'Righteous')
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 0
            Text = 'Any faction'
            Width = 106
          end
          object cbRarity: TcxComboBox
            Left = 8
            Top = 8
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any rarity'
              'Common'
              'Uncommon'
              'Rare'
              'Unique'
              'Legendary')
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 1
            Text = 'Any rarity'
            Width = 105
          end
          object cbType: TcxComboBox
            Left = 231
            Top = 8
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any type'
              'Commander'
              'Assault'
              'Structure'
              'Action')
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 2
            Text = 'Any type'
            Width = 106
          end
          object cbWait: TcxComboBox
            Left = 8
            Top = 35
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any wait'
              '0 turns'
              '1 turn'
              '2 turns'
              '3 turns'
              '4 turns'
              '6 turns')
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 3
            Text = 'Any wait'
            Width = 65
          end
          object cbSkill: TcxComboBox
            Left = 8
            Top = 62
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any skills')
            Properties.OnChange = cbSkillPropertiesChange
            TabOrder = 4
            Text = 'Any skills'
            Width = 106
          end
          object ceFilter: TcxTextEdit
            Left = 191
            Top = 35
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 5
            Width = 146
          end
          object ccbSets: TcxCheckComboBox
            Left = 43
            Top = 89
            Properties.Items = <>
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 6
            Width = 299
          end
          object lSet: TcxLabel
            Left = 8
            Top = 91
            Caption = 'Sets:'
          end
          object cbSkillTargetFaction: TcxComboBox
            Left = 120
            Top = 62
            Enabled = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Any skill target'
              'Imperial'
              'Raider'
              'Bloodthirsty'
              'Xeno'
              'Righteous')
            Properties.OnChange = cbRarityPropertiesChange
            TabOrder = 8
            Text = 'Any skill target'
            Width = 106
          end
        end
      end
      object pClient: TPanel
        Left = 0
        Top = 0
        Width = 434
        Height = 646
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pTopDeck: TPanel
          Left = 0
          Top = 0
          Width = 434
          Height = 290
          Align = alTop
          BevelOuter = bvSpace
          TabOrder = 0
          object pTopLeft: TPanel
            Left = 1
            Top = 1
            Width = 176
            Height = 288
            Align = alLeft
            BevelOuter = bvSpace
            TabOrder = 0
            object imgTop: TcxImage
              Left = 8
              Top = 8
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.PopupMenuLayout.MenuItems = []
              Properties.ReadOnly = True
              Properties.ShowFocusRect = False
              TabOrder = 0
              OnMouseDown = imgMouseDown
              Height = 220
              Width = 160
            end
            object cbAllowMore: TcxCheckBox
              Left = 8
              Top = 234
              Caption = 'Allow more than 10 cards'
              Properties.OnChange = cbAllowMorePropertiesChange
              TabOrder = 1
              Width = 152
            end
            object bSaveTopDeck: TcxButton
              Left = 8
              Top = 260
              Width = 160
              Height = 21
              Caption = 'Save custom Deck'
              Enabled = False
              TabOrder = 2
              OnClick = bSaveTopDeckClick
            end
          end
          object pTopScClient: TPanel
            Left = 177
            Top = 1
            Width = 256
            Height = 288
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 183
            ExplicitTop = 243
            ExplicitWidth = 185
            ExplicitHeight = 41
            object sbTop: TScrollBox
              Left = 0
              Top = 0
              Width = 256
              Height = 248
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
              ExplicitTop = 1
              ExplicitHeight = 255
            end
            object pTopHash: TPanel
              Left = 0
              Top = 248
              Width = 256
              Height = 40
              Align = alBottom
              TabOrder = 1
              object eTopHash: TcxTextEdit
                Left = 47
                Top = 8
                TabOrder = 0
                Width = 163
              end
              object bTopStore: TcxButton
                Left = 6
                Top = 6
                Width = 35
                Height = 25
                Caption = 'Store'
                TabOrder = 1
                OnClick = bTopStoreClick
              end
              object bTopLoad: TcxButton
                Left = 216
                Top = 6
                Width = 35
                Height = 25
                Caption = 'Load'
                TabOrder = 2
                OnClick = bTopLoadClick
              end
            end
          end
        end
        object pMiddle: TPanel
          Left = 0
          Top = 290
          Width = 434
          Height = 89
          Align = alTop
          BevelOuter = bvSpace
          TabOrder = 1
          object cbCustom: TcxComboBox
            Left = 103
            Top = 5
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 0
            Width = 182
          end
          object cbRaid: TcxComboBox
            Left = 167
            Top = 60
            Properties.DropDownListStyle = lsFixedList
            Properties.OnChange = cbRaidPropertiesChange
            TabOrder = 1
            Width = 182
          end
          object lLoadCustom: TcxLabel
            Left = 9
            Top = 6
            Caption = 'Load custom deck: '
          end
          object bCustomAtk: TcxButton
            Left = 291
            Top = 6
            Width = 58
            Height = 21
            Caption = 'As attack'
            TabOrder = 3
            OnClick = bCustomAtkClick
          end
          object bCustomDef: TcxButton
            Left = 355
            Top = 6
            Width = 73
            Height = 21
            Caption = 'As defence'
            TabOrder = 4
            OnClick = bCustomDefClick
          end
          object cbUseRaid: TcxCheckBox
            Left = 9
            Top = 60
            Caption = 'Use raid deck for defence:'
            TabOrder = 5
            OnClick = cbUseRaidClick
            Width = 152
          end
          object cbMission: TcxComboBox
            Left = 103
            Top = 33
            Properties.DropDownListStyle = lsFixedList
            TabOrder = 6
            Width = 246
          end
          object lMission: TcxLabel
            Left = 9
            Top = 34
            Caption = 'Load mission deck: '
          end
          object bMission: TcxButton
            Left = 355
            Top = 33
            Width = 73
            Height = 21
            Caption = 'As defence'
            TabOrder = 8
            OnClick = bMissionClick
          end
        end
        object pBottom: TPanel
          Left = 0
          Top = 379
          Width = 434
          Height = 267
          Align = alClient
          TabOrder = 2
          object pBottomLeft: TPanel
            Left = 1
            Top = 1
            Width = 177
            Height = 265
            Align = alLeft
            BevelOuter = bvSpace
            TabOrder = 0
            object imgBot: TcxImage
              Left = 8
              Top = 8
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.PopupMenuLayout.MenuItems = []
              Properties.ReadOnly = True
              Properties.ShowFocusRect = False
              TabOrder = 0
              OnMouseDown = imgMouseDown
              Height = 220
              Width = 160
            end
            object bSaveBotCustomDeck: TcxButton
              Left = 8
              Top = 234
              Width = 160
              Height = 21
              Caption = 'Save custom Deck'
              Enabled = False
              TabOrder = 1
              OnClick = bSaveBotCustomDeckClick
            end
          end
          object pBotScClient: TPanel
            Left = 178
            Top = 1
            Width = 255
            Height = 265
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 256
            ExplicitTop = 88
            ExplicitWidth = 185
            ExplicitHeight = 41
            object sbBot: TScrollBox
              Left = 0
              Top = 0
              Width = 255
              Height = 224
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
              ExplicitLeft = 162
              ExplicitTop = 5
              ExplicitHeight = 265
            end
            object pBotHash: TPanel
              Left = 0
              Top = 224
              Width = 255
              Height = 41
              Align = alBottom
              TabOrder = 1
              object eBotHash: TcxTextEdit
                Left = 47
                Top = 8
                TabOrder = 0
                Width = 163
              end
              object bBotStore: TcxButton
                Left = 6
                Top = 6
                Width = 35
                Height = 25
                Caption = 'Store'
                TabOrder = 1
                OnClick = bBotStoreClick
              end
              object bBotLoad: TcxButton
                Left = 216
                Top = 6
                Width = 35
                Height = 25
                Caption = 'Load'
                TabOrder = 2
                OnClick = bBotLoadClick
              end
            end
          end
        end
      end
    end
    object tsEval: TcxTabSheet
      Caption = 'Evaluate'
      ImageIndex = 2
      DesignSize = (
        784
        646)
      object cbIterations: TcxComboBox
        Left = 3
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '100'
          '200'
          '500'
          '1000'
          '2000'
          '5000'
          '10000'
          '20000'
          '50000'
          '100000'
          '200000'
          '500000'
          '1000000')
        TabOrder = 0
        Text = '100000'
        Width = 121
      end
      object bRun: TcxButton
        Left = 130
        Top = 3
        Width = 75
        Height = 21
        Caption = 'Run'
        TabOrder = 1
        OnClick = bRunClick
      end
      object cxGrid: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 772
        Height = 607
        Anchors = [akLeft, akTop, akRight, akBottom]
        PopupMenu = pmGrid
        TabOrder = 2
        object cxView: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          object vcType: TcxGridColumn
            Caption = 'Type'
            OnCustomDrawCell = vcTypeCustomDrawCell
          end
          object vcAtk: TcxGridColumn
            Caption = 'Your deck'
            Width = 273
          end
          object vcDef: TcxGridColumn
            Caption = 'Enemy deck'
            Width = 255
          end
          object vcWins: TcxGridColumn
            Caption = 'Wins'
            DataBinding.ValueType = 'Integer'
          end
          object vcGames: TcxGridColumn
            Caption = 'Games'
            DataBinding.ValueType = 'Integer'
          end
          object vcRatio: TcxGridColumn
            Caption = 'Ratio'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.###;-,0.###'
          end
          object vcAvgD: TcxGridColumn
            Caption = 'Avg. Dmg Dealt'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.##;-,#.##'
            Width = 64
          end
          object vcAvgDA: TcxGridColumn
            Caption = 'Avg. Dmg Dealt (Auto)'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.##;-,#.##'
            Width = 64
          end
          object vcAvgS: TcxGridColumn
            Caption = 'Avg. Dmg Suffered'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.##;-,#.##'
            Width = 90
          end
          object vcAvgSA: TcxGridColumn
            Caption = 'Avg. Dmg Suffered (Auto)'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.##;-,#.##'
            Width = 90
          end
          object vcNet: TcxGridColumn
            Caption = 'Avg. net gain'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.##;-,#.##'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxView
        end
      end
      object cbSurge: TcxCheckBox
        Left = 211
        Top = 3
        Caption = 'Surge'
        TabOrder = 3
        Width = 121
      end
      object bClear: TcxButton
        Left = 375
        Top = 3
        Width = 89
        Height = 21
        Caption = 'Clear history'
        TabOrder = 4
        OnClick = bClearClick
      end
      object bEvalExport: TcxButton
        Left = 270
        Top = 3
        Width = 99
        Height = 21
        Caption = 'Export to Excel'
        TabOrder = 5
        OnClick = bEvalExportClick
      end
    end
    object tsBatch: TcxTabSheet
      Caption = 'Batch Eval'
      ImageIndex = 6
      DesignSize = (
        784
        646)
      object clbTestAgainst: TcxCheckListBox
        Left = 3
        Top = 3
        Width = 230
        Height = 118
        Items = <>
        TabOrder = 0
      end
      object cbBIterations: TcxComboBox
        Left = 239
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '100'
          '200'
          '500'
          '1000'
          '2000'
          '5000'
          '10000'
          '20000'
          '50000'
          '100000'
          '200000'
          '500000'
          '1000000')
        TabOrder = 1
        Text = '10000'
        Width = 121
      end
      object bBRun: TcxButton
        Left = 366
        Top = 3
        Width = 75
        Height = 21
        Caption = 'Run'
        TabOrder = 2
        OnClick = bBRunClick
      end
      object gBatchResult: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 127
        Width = 772
        Height = 510
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 3
        object vBatchResult: TcxGridBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skAverage
              Column = vcbFNet
            end
            item
              Kind = skAverage
              Column = vcbFAvgSA
            end
            item
              Kind = skAverage
              Column = vcbFAvgS
            end
            item
              Kind = skAverage
              Column = vcbFAvgDA
            end
            item
              Kind = skAverage
              Column = vcbFAvgD
            end
            item
              Kind = skAverage
              Column = vcbFRatio
            end
            item
              Kind = skSum
              Column = vcbFGames
            end
            item
              Kind = skSum
              Column = vcbFWins
            end
            item
              Kind = skCount
              Column = vcbAgainst
            end
            item
              Kind = skSum
              Column = vcbFLoss
            end
            item
              Kind = skAverage
              Column = vcbSNet
            end
            item
              Kind = skAverage
              Column = vcbSRatio
            end
            item
              Kind = skAverage
              Column = vcbSAvgD
            end
            item
              Kind = skAverage
              Column = vcbSAvgDA
            end
            item
              Kind = skAverage
              Column = vcbSAvgS
            end
            item
              Kind = skAverage
              Column = vcbSAvgSA
            end
            item
              Kind = skSum
              Column = vcbSWins
            end
            item
              Kind = skSum
              Column = vcbSLoss
            end
            item
              Kind = skSum
              Column = vcbSGames
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.BandMoving = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderAutoHeight = True
          Bands = <
            item
              Caption = 'Against deck'
              Width = 204
            end
            item
              Caption = 'Fight'
            end
            item
              Caption = 'Wins'
              Position.BandIndex = 1
              Position.ColIndex = 0
            end
            item
              Caption = 'Loss'
              Position.BandIndex = 1
              Position.ColIndex = 1
            end
            item
              Caption = 'Games'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Visible = False
            end
            item
              Caption = 'Win ratio'
              Position.BandIndex = 1
              Position.ColIndex = 3
            end
            item
              Caption = 'Avg. Dmg Dealt'
              Position.BandIndex = 1
              Position.ColIndex = 4
              Width = 67
            end
            item
              Caption = 'Avg. Dmg Dealt (Auto)'
              Position.BandIndex = 1
              Position.ColIndex = 5
              Width = 61
            end
            item
              Caption = 'Avg. Dmg Suffered'
              Position.BandIndex = 1
              Position.ColIndex = 6
            end
            item
              Caption = 'Avg. Dmg Suffered (Auto)'
              Position.BandIndex = 1
              Position.ColIndex = 7
            end
            item
              Caption = 'Avg. net gain'
              Position.BandIndex = 1
              Position.ColIndex = 8
            end
            item
              Caption = 'Surge'
            end
            item
              Caption = 'Wins'
              Position.BandIndex = 11
              Position.ColIndex = 0
            end
            item
              Caption = 'Loss'
              Position.BandIndex = 11
              Position.ColIndex = 1
            end
            item
              Caption = 'Games'
              Position.BandIndex = 11
              Position.ColIndex = 2
              Visible = False
            end
            item
              Caption = 'Win ratio'
              Position.BandIndex = 11
              Position.ColIndex = 3
            end
            item
              Caption = 'Avg. Dmg Dealt'
              Position.BandIndex = 11
              Position.ColIndex = 4
            end
            item
              Caption = 'Avg. Dmg Dealt (Auto)'
              Position.BandIndex = 11
              Position.ColIndex = 5
            end
            item
              Caption = 'Avg. Dmg Suffered'
              Position.BandIndex = 11
              Position.ColIndex = 6
            end
            item
              Caption = 'Avg. Dmg Suffered (Auto)'
              Position.BandIndex = 11
              Position.ColIndex = 7
            end
            item
              Caption = 'Avg. net gain'
              Position.BandIndex = 11
              Position.ColIndex = 8
            end>
          object vcbAgainst: TcxGridBandedColumn
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object vcbFWins: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object vcbFLoss: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFGames: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFRatio: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFAvgD: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFAvgDA: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFAvgS: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFAvgSA: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbFNet: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSWins: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 12
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSLoss: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 13
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSGames: TcxGridBandedColumn
            DataBinding.ValueType = 'Integer'
            Position.BandIndex = 14
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSRatio: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 15
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSAvgD: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 16
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSAvgDA: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 17
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSAvgS: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 18
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSAvgSA: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 19
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vcbSNet: TcxGridBandedColumn
            DataBinding.ValueType = 'Float'
            Position.BandIndex = 20
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = vBatchResult
        end
      end
      object lNote: TcxLabel
        Left = 239
        Top = 30
        Caption = 'This simulations always run in blazing fast mode'
      end
      object bBEvalExport: TcxButton
        Left = 239
        Top = 96
        Width = 130
        Height = 25
        Caption = 'Export to Excel'
        TabOrder = 5
        OnClick = bBEvalExportClick
      end
    end
    object tsUpdate: TcxTabSheet
      Caption = 'Update DB'
      ImageIndex = 3
      object bDLXML: TcxButton
        Left = 3
        Top = 3
        Width = 134
        Height = 25
        Caption = 'Download XML sheets'
        TabOrder = 0
        OnClick = bDLXMLClick
      end
      object lUpdateXML: TcxLabel
        Left = 143
        Top = 6
        Caption = 'Last update: '
      end
      object ceLastDate: TcxDateEdit
        Left = 217
        Top = 3
        Properties.ShowTime = False
        TabOrder = 2
        Width = 96
      end
      object bCustom: TcxButton
        Left = 3
        Top = 66
        Width = 134
        Height = 25
        Caption = 'Reload Custom decks'
        TabOrder = 3
        OnClick = bCustomClick
      end
    end
    object tsHelp: TcxTabSheet
      Caption = 'Tips'
      ImageIndex = 1
      DesignSize = (
        784
        646)
      object cxMemo1: TcxMemo
        Left = 3
        Top = 3
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          
            'Use left mouse button to add cards from library to attacking dec' +
            'k'
          
            'Use right mouse button to add cards from library to defending de' +
            'ck'
          
            'To use minimalistic interface instead of visual, clear one of th' +
            'e commander cards in visual interface'
          'You will probably do just fine without my tips ;)'
          ''
          'My kongregate account:'
          'http://www.kongregate.com/accounts/NETRAT'
          ''
          'Project pages:'
          'http://code.google.com/p/evaluatedecks'
          
            'http://www.kongregate.com/forums/65-tyrant/topics/195043-yet-ano' +
            'ther-battlesim-evaluate-decks'
          'or'
          'http://tinyurl.com/tyrantEvalDecks')
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 640
        Width = 778
      end
      object xgmlogo: TcxImage
        Left = 440
        Top = 368
        Cursor = crHandPoint
        Hint = 'xgm.ru'
        Anchors = [akRight, akBottom]
        ParentShowHint = False
        Picture.Data = {
          0A544A504547496D61676554610000FFD8FFE000104A46494600010100000100
          010000FFDB004300010101010101010101010101010202030202020202040303
          0203050405050504040405060706050507060404060906070808080808050609
          0A09080A07080808FFDB00430101010102020204020204080504050808080808
          0808080808080808080808080808080808080808080808080808080808080808
          08080808080808080808080808FFC0001108012C019003012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEFE
          28A28A0028A28A0028A28A0028A28A0028A28A0028A090064900547E6C7FDEA0
          0928A01046410451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514523305196381400B45
          47E6C7FDEFD29E08201072280168A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A00290900124E052D55B99422919E0726
          813656B9BB58C65C803D3D2BCC8FC45B5BBF8870F8074CFF0049BBB6D3FF00B5
          354914656CE37631C11B1ECF2B2CCC39CED81B8E41147C7FE37D2BC29A36B3AF
          EB57A961A3D8DACB7B773B02C2086342EEE42824E1549C004F15F347ECC4FAC6
          ABA778B3E27F896DA6B2F1278C759935630CB1AF9965608AB059DBF98A489116
          288481B8CF9C4ED1935B469697672CEAFBD63EF7B79776D20E54D5EAC1D30978
          1327078ADEAC4E983D028A28A0A0A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800ACEB89B68672781D2B46
          B9ED5372C0FED9A691337A1E636DF118DAFC4BD47E1F6AF1A4125C69FF00DAFA
          3CC1891770232C77119F9400F13BC2C464E56743D881EB56B76B2287420FA8F5
          AF827F6999751D06C3C37F17740B39EFFC4BE0CBF6D4A2B68CA2B5FD94A860BA
          B6323B048D191C48D210C57C8040CE2BE9DF00F8D74DF1468FA3EBBA4DE477DA
          55F5AC5796D32F49A19143230F62181FC6B5953D2E8E5A75B5B1EDA082010722
          96AADB4A1D40CF079156AB13AD30A28A28185145140051451400514514005145
          14005145140051451400514514005731AE5E8B7B691C9C1C66BA494E11BA7A57
          9278F3545B5B49BE7C000D5415D99559591F9CDFB70FC45D4A0F07E9DE01F0F4
          D09F107886FD2DA2567C1F2D1D0E40CFCCAD335A44C3FB93374EB5F5C7C2ED3A
          D34BD3B49D234CB786D34DB4823B6B786350A91448A155540E80050315F979F1
          7359B6F1BFED4FE00D0C5E1BAB6D3EEEDADDA3643FE87731A49A93907A36F582
          C867B6DEB918AFD58F85EA1A28D9BAD774E3689E4509F3546CFA4F4D8F6C510C
          7BD6BD51B3C0551C7DDABD5E79ED456814514505051451400514514005145140
          0514514005145140051451400514514005145140051451400514514005636A71
          EE86518F7AD9AA17A0157079F96844CF63E3BF8C7A2DA7887C3FE24F0D5FA93A
          7EA36571633AE7198E58D91BF4635F2F7EC37F12EFB52F002F83F5B9FF00E279
          A14E2D5E36932EB0B8DE831801511CCF6EAA3A2DB81D8D7D87F14136473C800C
          735F963F0675EB4F87FF00B49F8FFC2CDA841E5EADA85C0FF544C93DD483FB4A
          34DE0FCAB1C7757830473C723A1F4611BC753C5AD3E5A899FBB3A1DE8B8B689C
          367806BA6AF22F016A82EECE1C1CE40AF5A88E517A7A5704D59D8F5E94AE87D1
          451526A145145001451450014514500145145001451450014514500145145005
          6BA6DB1FE66BE5EF8B7AB1B7B69D7711C1AFA6EFDB113F6C2D7C53F1B2ECAC53
          0048EBD2BA30D1BC8E1C6CED167E4A7C23F11378C3F684D6759D4AE16FE62DAE
          4F672118C431DEC76F0903DA0755CF5C1F735FABB65E36B1F0BDB780EC67BB96
          D2EF5AF1059E956AE8BBBE7F9AE195BD03476D2AE7B6EAFC58FD992E5A4F8A1A
          05C8C843E1CBFCFB16B9B23FD0D7E8BF8EF5B963F12FECD9089105BA78DA19E5
          0DFC4459DCC4B8FC6707F0AEDAB1BC4F1F0952D23F596C2E44B1A953F30ADD56
          0CA18579A785EFFCF8D32C0935E8F09253F1AF2E4AC7D0D295D12D145148D428
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A006BB6D52D5CFEA576B0C4D92031ADBB820281F8D796F8B352F2
          2393E6C7E355157665565647CACFE3BB2F19787BC5135A1B8FF897EBFAAE90E6
          5E0B4905D48848FF00678E3DABF273E20EAE7C3FFB4758EAB6CED05E27887469
          1993AEC9D62B4627D8A348A7DABEAEF81DE28BAD4ECFF6918AE26DF0C1F157C4
          3040B9FB91EE85B03FE04CE7F135F0F7C63BA27E38DCDD8C9097DA14407A94B8
          47FF00DA82BD4A30B44F9DC554BC8FDF3F849AA79F6B07CD9E057D3B6CD94FD6
          BE31F82772CD6F0673C57D9364C0C6BEE05706223691ED60A578A65DA28A2B03
          B428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0029AEC1064D3AA9
          DDBED04F6033409BB1CA78CBC47A7F867C3DAEF887569D6DF4EB1B49AF6E643D
          1228D0BB1FC029AF8DFE335D25D5B3CD190D13AEF423B835DEFED4BA95C4BF02
          FE35D8D9AB4B7B3784F588A151C9676B394281F52457C8DE18F880DF12BE0B7C
          3BF154F756B73A8DDE8B6C6F8C2A4247789184B8400F4DB2A4A9FF0001EF5DD8
          586A7938EAAB95A3F30BE03EA29E1DF8B3A5E9174ABE76755D01707FE5B43296
          3FA59495F5CFC79F16DA6813FC0CD6F50D59347D26C7C5B697D7972CBB8436F1
          1F365240E71B11C1C7AF43D2BE2FD656C7C0BFB41412DB0BB105BF8A567FDF29
          C3BEA0A5642A7BAAB6A2F823A14C1E86BDBBF6A88A6D4FC07E149C24B25ADAEB
          6BF6A2A384865B69E1F98F60649215FA915DFCB783F23C08D6B49799FBB1F0FB
          575B88E201F3C0E2BDFED5B7275EC0D7E637EC85F146E3C6FF000D3C0BAEEA77
          AB79ABC966B6FA84BB76892F21630CE4000601962931818C62BF49F48B959A08
          5C1CE462BC9AF0B33EA307554A26E51451581DC1451450014514500145145001
          450480324802A233A0F5228025A2A9B5DA8E9B47E340BB53D4A11ED40B991728
          A856743D722A604119041140EE1451450014514500145145001451450053BC70
          A84FA035F37FC46D59618E501C0FC6BDEF5BBB582DE572C071FA57E5AFEDA7F1
          4A7F08FC32F174DA75D4D06B37918D2AC5E198C52C534EDE5F9B1B0E7746ACF3
          71DA23C8EB5D18785DDCE0C6D5E547C99FB3078861D5BC2BF1835B856EA18F52
          F1CDF6ABB271B6446B8B4B4998303C820C8460F23A57CC3F126FA7D43E39DED8
          C711565F146856C0FF00794FD89CB7E01D87E15EDBFB33B2DAFC32D47508C38F
          ED1D6AF2E0927EF18CADAE47FE02FE95E01E06FB7FC41F8EF61AC3C5FDA5A78F
          115E5FCF227CABF6481658ED25C7A663B23EE48AF5B96D04BB9F312AB793F23F
          73BE1A6BD67E1CF0FEA5AEEA12F9561656B2DDCEDFDD8D14B31FC81AFB3FC31A
          E5A6B9A3E95AB58C9BEDAEADE3B98987F123A8607F222BF253E3078F6D3C05FB
          387C59D66EAE67B50DA1CFA7C72469B9A39AE80B689B1E81E7424F6193DABF41
          BE0B5ECB6DE04F03E993EE5B9B7D26CE09013C865851483F88AF3B150D6E7BF8
          0ABEEA47D268DBD41EFDE9F552D5B70FA8CD5BAE23D64C28A28A061451450014
          514500145145001451450014514500159BA8FF00AB7FF76B4AA8DF26E8DC7AA9
          142265B1F217C5E9566D3F52B1988304D0BC2E08C82ACA41CFE75F8E3FB1A78E
          2F26F879AF7807552D14FA74E97B6B1B7FCB286E54B491E7BB09D2E19B1D3CD5
          CF5AFD84F8D513C56F3B0071C9AFE72B55F10DDFC1FF008F7E31D5AC85D4D0E9
          FAEDD4B75044986B9B0BBC5CBC28A3AED59D1914100BC11E4819C7AD4159293D
          8F98C7CDF338A3D13F6ABB2BF8BC79A45E437B2DB477DA43476B2282459DCDB4
          C5BCCC71F31375111CFF00CB2AF79F11CB6BF14BE11DE3D8C06E66BDB04BCB6B
          7170148BB8889521774DC0159A2547033D18579FFED0F1DA78A3E1BC5E2DD2AE
          E2BC8B4D68F588A585F29716850894EE19DC9E548D28C705A34AF35FD9E7C72B
          637DAAF80AFEE1C4370CDA8695BDFE50D8FDFC0BD87204C1464B1798F4535EA4
          60955E496D23E7E55B9A97B48EF13DD3F612F8B76FA3F89355F064D7D10D3754
          D9ACE94CCC57CC9762ACD1AEEC75458645403276CEC7A1AFE81FC03AF45A8584
          1870D951DEBF93AF1BE9DACFC2EF887249E1EBE974790DD1D6B44B88F3841E68
          778881B432A484A3460E0C4F1827E722BF75BF651FDA0F47F893E15D3758B399
          60B80FF65BEB52FB9ACAE940DF13640271B9583606E4656030C2BCAC4507AC5E
          E8FA1CB7189D9AD99FA911B875073CF7A7D737A2EAB15EC11C88E1B2067DEBA3
          0410083915E5347D3465742D1451414145145001504B3AA6471EE4F6A7CADB50
          E3A9E2B84F12EB6BA6DBCAC5B0AA0934D2B9139D91B17FADDBDB025E45623DEB
          C6F5CF8DBE0CD33C4969E0FB8F14E85078AAE216B8B7D35AED05CCD10CE5D622
          771185739C7F0B7F74E3F2BFE287ED7BE2EFDA07E1D6B1AD7ECB5E25D4FC2DAD
          E8974B797B6DA959C4B73AADB1B7924805BE44C9B649136EC6D8CC63218AAE56
          4F8FBE257C75F07FFC2D6F813FB46786ACE2BA8357B1BE935B9E34CBCA12282D
          43150582CD0ACD382137332C263CB6148EEA584BEACF1B1199A4EC8FD60F027E
          DDDE1BF8AFF0E3E2478FFC05E15F125C4DA0C53BDBE9F7ED1C2FAAB2DBF9D104
          78CCBB0480A820A975CFDC3900F3D79FF0504D13C29F053E1D7C5FF1CF81BC57
          672EBEDB574DD3764E615C48FE779D2B4486378E2F3501C3BAB0C2F0C57F26F5
          6F8F1078335DFDA174AD3AF458E93E2768EFB449F485550B7F3DAC56F2CBB978
          323931CFBC039F2E56639037739E11F8ADA578D2D7E07FC39F1A41A4DF783FC3
          70CD2EA11DFA2084CD6E9716F681C92061618CBB2B0DAEB3C64E41C56FF5457E
          5EBFF06C707F6ACADCDD3FE05CFE8F748FDA23E1E5CF887C39E1097C5DA2DB78
          AF55B2FED0B0D3269C47757306D2DB9626C3744908046488A520111BEDF7CD3F
          5DB6BA0A5245CFB1AFE6C3C0BF157E1D78DBE2FF0089BE3BF89C369BA5785F4F
          B0B6D1A796468E291375CEDBA789465A42D23A4719C9DAD1E5049B427BE7C1DF
          DB27E257C28F8736BF15FF0068DD62FF00C63E1DF11CF6A3C3F61A4585A4779A
          79686E677F346E8A3581A3862281A49241BB0ED9DD8C6AE12CAE8EEC3E669BB4
          B43F7DA39D5C64918EC4558AF31F06789EDF5FD32C350B6766B5B889268CB0C1
          DAC01190790707A57A544C5939E48E2B81AB1ED42774494514522C28A28A002A
          295C229E706A4660A327A5725AFEB30D85B4AEF2056C7AF4A695F42652B2B9C0
          FC45F1245A7D84FF00BC030A7BD7F3CDFB6B7C4FB8F157C43B0F095B2DC4FA5E
          8ABF6B91147375A84C9B51501C12C913903070C6E48EABC7E817ED8DFB4959FC
          39F0CDD1B29EDEEFC5179BEDF49B3639F366C7323804110C790CE723B283B9D0
          1FC6AF847E1CB8F19F8EADEF75292E2FEC74D9C6AFA85D4C326F2F4B978C3118
          06469774EC467063008C480D7AB87A0DDA0B767CB6658D4AF27B23EBEB8907C2
          6F82D359D94B63FDA7A7694C91C815962B8D41C7DFC6490249E4CF5E37D7937E
          C99A3C31EBFAF6A0B04CD0697636FA5DBDC3393BCB9DF2A30E8582C36AD9EBF3
          F6C9CF03F1FF00C7B0EB1E20B2F0BD9DCA7F65E8C5AE6FDC7DD378D1E1573C1F
          DDC4EE4F552665FE28C81EDFF0665D37E1BFC278FC4BE219A2D2D6E217D77529
          0C6D9883A29556500B17489618C8009664E072057A9CAA557963B44F02359C69
          294B7916BF6C4F11DEF8B20F037C1AD1AE621757CED7770BE60044926EB5B556
          5EA559E5B861FED423BE2BF6F7E16DFB5D2C2410462BF9BEF86FAA6AFF0014BE
          3F784354D7A369E7B9D54EAF3C25C30D3E0B64324089DB09225A46481F31667C
          65891FD1AFC1780B5AC0E6BCBAE938B923E8B0127CEA27D6F61CC69FEED68553
          B350B181C70055CAF24FA78EC145145030A28A2800A28A2800A28A2800A28A28
          00A28A2800AA1752AED6C91B403F8D5E6242B11D715C86BD766DAD98838E29A5
          7226EC8F9DFE2CFD8753B2D462B5B9B7B99A1630CCA8E18C526D0DB580E876B2
          9C1ECC0F715FCFAFED83E13B7D13C57A578D228FCA7BE234ABA20F0D222C9244
          DB42F52BE729766FE18940AFD03F8FFF0016E2F807FB53E99E22F106A02CFE14
          F8FF00434B0D52495DCC5A76AD6526C8EED8924468D0DCC31380146D432337EE
          8E7CB7F68BF045A78EBC39AEE88F2ADB9B98C341385DDE44EAC1E3931C676BAA
          363BE307835EE6028F3C5D33E3B38C4724D555D3F23E1FF821F106D1EDBFE157
          6B30C6D6AF1CA74D32B8749D0EE692D7630FE11B9D464829BD40558867C4BC51
          A55F781BC637DA3D95CDC69977A7CE977A4DD46F991206C986405CB16230F136
          FC8731C8082AC41E06F60D574FB896C355B6BDD035BB6986F504892D678DF2AF
          1B91CE194323818236B0C822BDDAE7503F1BFC2F0986386D3E28E868646B742A
          91EA903603F9458F0AE554852479722AAB36C21DFAA85EBD3F63FF002F23B79F
          97A9E3629AC35555F7A53D25D95F67E8CF56B7D46D3E3BFC3A96D1AE2D747F1B
          D99569514B6CB5BB00ED6DA725ADA501B079F94B0C89233B7C9BE11FC5DF14FC
          0BF1EB6B70D8DEA49130B3D774669023CE83E60327E5F3137EF8DB3B595CE182
          CBBC793F84FC73AB7843511AFF0087D2D64BC2861960BA42A268F702D13F1BA3
          6CAF5C655872A7054FD25E26D0B41F8E3E1AB3F19F82EE23B1F155B29B72B70A
          11891F3359DD85CED20B6E571B82EFDE9B9243BED258A873474A91E9DC8F68F0
          553967AD296CFB3FEBFADCFDF1FD9EFF00685F0C7C46F0D697AF681ABC77FA6C
          CA003F75E171F7A3910F28EA782A7906BEDCD2B5886F61478E4524F6CF5AFE34
          7E18FC5DF1FF00C0CF175DEAFE1B4934ED552458356D1EFB724575B46764A173
          B5C0605265CF05586F8D8ABFEFCFECBFFB61F84BE2DE901F4EBC92C75BB6D89A
          869B72409EC9CF43E8F1B6095917E56C11C32B2AF89528F36DA3EC7D8E131BCB
          64DDD7467EAAAB2B0C834EAE0740F15D9EA70C6C932963DF35DBC53A4801C81E
          FD8D70B563DC84D3D89E8A28A4590CFF00707D6BC6FC7F6D33D9DC6CDDD3AD7B
          3C8542302474AE2FC491DB496B22CA573B79ABA6ECCC6B46EAC7E017ED4BF0F2
          FF00E1FEA3A97C5BF84564DE17F142C81F5EB4D3A0416DE20B6F319DA4BAB600
          096646776F3462531BCA0316D9B7F31BC2FE0DF12F89E186FBC2BA0897472D23
          A5DB5C1B6D3212C1433461998B28548E3DF1AC8408950B7C9C7F455F1B746B17
          172C8533CE6BF0D3E29FC22F1C6BBABEB7ABFC51F881E03D2BC236D7323DA4F7
          45A782085A56F2C340FE4451380E8BBF73B1E0166E09FA2A3415449D9BF25A7E
          3D0F82C7E2254A6D7325E6D37F725B9E7BE2BF06D9F84FC2F73A99F893F0EAC3
          5E86DA5BA7D2CB0916E24C962B1482447627E63911166278527AC5E06F0A3F8C
          BC2106BD1F8F7C0FFDB72C4CC9A53FEEBC9712151E64BE63BA860030CC418646
          466A69FC2BF00EC92181BE34EA725C05C48DA69B496276EFB76DBC981EDB8FD4
          D4F2781BE045DE9F335BFC75B08EE9D3F75FDA97BA71543FF4D21F2E2723DB2A
          7DEBB560E17F8236EDCFF89E3FD7EA5BF8B2BDF7E4FC3FAD4E6FC5BE15F14F87
          AD2687C59A55F699A516205EDB5C996C99C828B2798A46C6FDE15469550E5C85
          E49AFD28FD953C23AAFC51D4F42F8C5F12D2CF5CBC4431F86B4FFB385B2D2200
          541B98213BB124A630EB2167609B30C01D89F0EF82FE0EFC45D0C5AEA5F08BC7
          1F0EF56D22E72DE62B496F6374A08187B78C4F1CA0ED642C19580C85652723F7
          17E06693A6DBA59AAAC512280AAA060281C600ED5C95B0EA9A6ECD793D7F15B9
          EB60316EB492E64FCD5D7DE9EC7DE3F0FED664B4877A91D0D7B4DBAE149FC2B8
          7F0BFD952DA3588AFDDE2BBB8994A800F3E95F3751DD9F7D4236449451474EB5
          06E14C775419279F4A866B98E2524B003D4D79DF897C6965A4C12334EAA403C9
          35518B7B19CEA28ABB3A1D6B5EB7B085DE4954100FE15F9F7FB4D7ED37E17F85
          FE1ABED6359BF7C64C56B690156B8BF98F48A14246E6EE4920280CCC555491E2
          DFB577EDBDE1EF85D04BA269CCBE22F1C4F1192D74C8A5DA1139025B89003E54
          79181C16620ED5215CAFE1A78A3C67F107E34F8E1352D6259BC4FE32BC0C9043
          106482CE1046E08A4B082DD72B96249276E4BBB0DDDD468F2BB2D64FA1E16331
          F74DDED15BB3A9F1A78EFC7DF1BFC7B26A178AB7DE24BF664B1B05909B6D2ED8
          1CE0BE01F2D3702F311B9D8F0B968E21EC5E24D734CF825E07B2F0A786A68EEB
          C6178ACCB70C8373CA40125ECC0E7A701539E4468308A4A675B47E1FF801E109
          2F6FCC1AF78DAFFE51B06C6BD940C88D49C98EDA3CE4B1CE371386770ADF2DEA
          9AE6B9E26D625D5B5379358F10DE3A42A9047B77B1388E08509F95016C2824F5
          2CCC49663ECC97D5616DEACBF03E3E1378D9F36D463F8FFC0FEBD3BEF87FE1B8
          7C6FE2CB6D06FA0B9BDD20892FB5590B67CC42D92B23306DCD33B61B3866532B
          0605735E8BF1BFE2447E21BC6F03697347368B633ABEA128E45C5D21CAC20E70
          5622033707F7814654C4EA79ED4F56FF008537E173E10D1EEACEE7E266A63ED1
          AA5F43965D3908C2ECDC3E62A3E58D48009DF2B2F251FC5347D3B50D5AFB48F0
          CF87E012EA5752ADADB07259509C932487392AAAACEDCE48538C922A711FB982
          C3AD6A4B7FF234C24BEB151E2E5A538FC3E76DDFA763EF3FD8D3C1B15F6B1AA7
          8F658CCB3393A559123EE44AE1A76560C43069151082A0AB5B1FEF57EFAFC30B
          CD33468344B2BBBC82DEF2F1CC16B1B361A7758DA42AA3D9518FE15F969F047C
          3DA27807C3FA65946F0D868DA75BFCD34C5500551979646E0649DCECC7A9249E
          B5DC7EC9DF13A6F8F9FB447C44F8CF6B35F9F879E1CD2D3C1FE144990A248D33
          A5C5E5CF96DCA4AE21B339203795244AC1595857363A8F245535D0F6725AFCD2
          755F53F6D2D65560B8C106AF5721A0DD35C5B29639E2BAE539504F715E13563E
          C60EE85A28A291614514500145145001451450014514500145145002119047A8
          AE1FC510B4966E40E403F8577358FAA5B09E19508CE464534F522A46E8FC61FD
          B8FE1DCFF11BE1A788746B5B1FB7F882C5BFB57484DC549BB89586C1C85CC91B
          CD082DF28F37775008FCECFD9B7E3F9F1469167F0CBC67AB0BBD4D22FF00891D
          F4CE375F5B85C8B7724FCF2A28255BAB20E794667FDCBF8E5E1691A1B99A28CE
          704F4AFE6B7F69DF86571F0DBE225DEB560D2DB787758BC6BDB3688BC6F617E0
          F99246B203956DCA678C82187CE14011035EF529B8C556874DCF89C7414A6E84
          FAEDEA7AAFED27F0E2E58C9F103468A4967B48366A56C99CCF6C0E44C8BD0BC7
          96C8182C99E498D14FC8BA5EBB7FA4DFD86B7A2DFC965A8C0DE641346720E460
          823A32303820F047BE08FB2FE0D7C7587C7D6F6FE0EF19DC43078E9108B7B9DA
          A91EB28AA49650301670A0978C603005D0637A45E45F19FE0D5C6813DF78BBC1
          B653DC694EDBEF74DB78B71B53DE585179287AB200482491C642FA58BC27B68A
          C5619FBCB7EFEBEA7CEE0F1EB0F3782C62F75ECDEDAF47E4FA7DC61EB16507C4
          AD36EBC71E11B1587C5D6E9BF5FD0206DEF37FD3DDA2F56CE09298CBF38FDE29
          59785F0778FB58F066AD07887C37730DCA3AAADC5B3C9FB8D461CE423900E08C
          92B2004A1278656747E0F4CD6EEEC2F2C35DD0F5292C3518B12DADDDBB02541E
          E0F21948C65482AC38208AF6382DFC33F18AE23974B9B4DF04FC5970CF7B62C1
          92C35E6032D3407929260172065C61C3071B66AE6A4FEB3255293E5ACBA6DCDE
          6BCFBAEBD0E8AABEA5174ABAE6C3BD9EEE1E4FAF2F6974D9F467BEEB3A4781FE
          3DE936FADE89A9FF006378C2D604566C299ADD5B244175103F3C7BB7ED607860
          FB1B970DF301BBF1AFC32F15C463BCD4BC19E34B33E641716B300C5323F79136
          312C2D81C302A7957504320E245D7887C25E20CFFC4DFC23E2EB2C8E4049A10C
          7F14922629FEDC6FB7F880AFA0AD3E2D7813E226871786FE31DA5A691A8AC98B
          6D5E2529044D8189565E5AD9FEF06DC4C640C3310E631AC9D2C5BE5A9FBBACBB
          E89FAF67FD6A65055F02B9E97EF683EDAB4BBAEEBFAD0FD0AFD9A7FE0A370C0F
          65E1AF8CD35AF87AF9102A6B8A76D8DDFCC07EFD7FE5D9F072589317C8EC5A3C
          AC75FB63E05F8B9A4EBD696D3C17D6F71148A19191C32B83D083D08AFE3DFC7F
          F0E35FF8768B7D3CADAF78518E63D5618C058D4F2A2E0027CB38E37FFAB638E5
          4B041D6FC11FDA47E26FC04BDB71E0CD5BED7E1512879F42BC666B471BB73791
          8E6D9CE5BE64F94B3167490815E462B0F2A73F675D59FF005F7FA9F4F96E690A
          B05570F2E68FF5F73F267F6A161AC5BDD223472AB023A66B51AE102923F5AFC6
          3FD9C7FE0A1BF0DFE2549A6E8175AABF857C67228074AD45823CAFCE45BC9F72
          7FBA58053BF6E0B227207E81CBF1934C6D3CC82F23E99FBD5C4F0B2E9A9EFD2C
          C60D6BA33D975FF15D9E950C8F24CA08073935F9EFFB45FEDA9F0EFE10D9BAEB
          FAE09356951DAD34DB4C4B79798563F2460FCAA4A95F31CAC618A82E0B0CFC67
          FB6BFEDDB3F831EE7C05F0F6EADEF7C7B3A033CEE37C3A344C38771D1E661CA4
          7D003BDF8D892FE1FEAFAF6A7E20D6355F10EBDA8DD6AFAF5F4C6E2F2EE76CCB
          7121EEC4718030028C2AA80AA00000D7D9AA7A3D59C1571B2A9F0E88FB3FE317
          EDBDF177E28DDDCC3A1DC45F0E74124858ED4ADC5E4A33D649E45DAB918F9634
          05493F3B706BE4ABCD5AFB52B95BCD5752D4B57BE08631717B72F7136C2C5B6F
          99212DB7249C6702B95FB5333C50431DCDDDCC8DB228608DA59666C13B511416
          63804E0027835ED5E16F819F107C4B6897B770DA7846D5C1D82FC192E31B54AB
          F9087EE9DCC0ABBA382A4151906BA6861B1188D29A6FF2FF0023C6C663F0D86F
          7AB4927F8FDDB9E6FF006A1CE4E3F1A4FB57BD7D37A5FECAD23464EB1E33D6EE
          E5CF06C2C63B75FCA4331FD68D4FF65695514E8FE33D6AD25FE237F611DCAE3D
          846613FAD777FABB89B74FBD1E5FFADB83BFDAB77E57FF000E7CD16DA85C595D
          2DF58DD5CD85F846896E2DE468A6456C642C8A4300703A1EC3D2BE8AF853FB5B
          7C67F8537B6C6DFC46FE33D0D1943D86B2C657D99CB08AE87EF55CF40D219554
          7F01E2BCF3C51F02BE20F86ED64BCB24B4F17DB201BC59031DC60062CFE439C6
          D1B5405477762D80A719AF115BCDCF3C4CB3413C4E639A2951A392071C94746C
          323723E5201E6B871185C461DDAA26BF2FF23D4C166186C52E6A324DFE2BE5BA
          3FA52FD987F6FAF057C5729A35D4AFE14F18C6407D2AFA74F3275C1FDE5BB838
          993E539C00CBC6E550C85BF50BC31E35B2D62089D2656247635FC368B92B2432
          ABBC73C522CB1488C55E291482AEAC395652010C39046457EBC7EC61FB786AD1
          EA3A6FC36F8AFAB093547658749D62460A2FC9E905C7659BA057E927DD387C79
          BCDCB1A9A6CCF5E962E54B7D51FD2EA5D2B2861B587AE6B1353D7AD6C90B4B2A
          71CF5E2BE5BB7F8E7A58D3564377193B73F7ABF35BF687FF008296781BC38355
          D0FC01769F103C5513795B6D25C595BBEEC379B740152570D948F7B6E015B667
          7085846BE2D11DB53348DBDDD59FA73F143E3CF86BC17A4EA5AAEB5AEE97A2E9
          56E8649EEAEAE1618A141FC4EEC42A8F726BF0BFF68EFF0082896BFE317BFF00
          0E7C1D7BCD26C19B6C9E20BA88091D70722D6DDC1DBC951E64A3230C047CAC83
          F3BFE2AFC69F1FFC62D587883E257890EA6B0132DBDA2030D8E9F80726287710
          1B96FDE396930705C8000D3F077C30BDD774D3E2CF17EA47C09E058879F25DDD
          6D865B98BA65049C4484FF00CB471C8C6D521D5C76E130D3AB2E4A0B5EFDBFC8
          F0733CD69D187B4C44ACBA2EEFB25D4A5E1CD17C53F123C45756DA6C973AB6A5
          24825D4B51BC99A516F903F79712B12CEE40185C967C7650CCBF4DFDBBC0FF00
          B3EF876F6DACE45F1178D6E6349A58DE554B9BF6C9542E403E4DBA92FB460800
          4840772DBBC7F5EF8DBA2F87B4283C29F05B4F8345D3D0BA3EA32DB60F403CC8
          A390664918924CB30392B92B26FDC3C4742D2B5FF17EBEFA6687697DAF6BD72E
          26BA9A4767D80F1E75CCED9DAB85382C492136A06202D7AD09D3C3BF6787F7EA
          BEBD17A77FEBD0F9BA90AD8B5EDB17FBAA0B5B3D1BF5EDFD7A9D0F883C5BAFF8
          A7537D4F5EBDB8D53539E4091450C6C554B10161B78464E3240541B9989E4B33
          127D1A130FC1EB68B52D452CB53F8B9770FF00A2583B0921F0DC0E0832CDB490
          D330C8E0F3CA21D82491F12EB55F0DFC2492EEC3C337D69E2FF8AAAEF0DC6A8F
          16EB4F0F29F95A3814E43CF8CA9EA412E5CA8DB0B78D5C6A0EF34F7B77733DDD
          E4F286965909925B995880093C97763800724F00761585497D564E527CD59FCD
          47FCE5F8236A5078E8A8C5726197C9CFFCA3F8BF43A0B9D52567BCD4752BE9EF
          2EA5669EE6E676DCF339EACC7F4C0000000000000FBAFF00677F86173E1EB37F
          13F88ADC43E24BF8D42C2E837E9D6D9C888B1E77B1DAEE0606551707CBDEDE5F
          F04FE0ACF1DC58F8D3C6D66E978BB65D3B4C997FE3D181C89E61FF003D780553
          FE59F53F3E047A9F1AFE3E0D2A3D47C01F0FB5278F5452D6FA9EAB03906CC838
          782071FF002DBAAB480FEE8E403E664C7D585C22C341E2311F13D975FF008767
          2E2B1EF19516130BF02DDF4D3F45F8F4F3E83F695F8EB3EA10BFC24F87F7B717
          F645BC8D6DF4F06492FE6DDB469D115E5B2D8122AFDE62B113FEB52BF593F639
          F8710FC35F87FE19F09C10C4BA904FB5EA72A6D63717B27CD2B170AA5D54E234
          2C32238E3524EDAFC5AFD917E15CFE32F1C5878BEEEC557C29A2CBB6CD4A0D97
          57E000BB54FF000420EECE31E618F69CC4E07F493F047C28D0DB5BCB247D81E4
          579955B717567BBDBD0FA5C0417B45469EAA3BFA9F5B786E068ECD339CE00C57
          67D3A56669D6E218A340B8007EB5A75E137767DA538D905145148B0A28A2800A
          28A2800A28A2800A28A2800A28A2800A8E44DEB8EFDAA4A2803C77E20785E2D5
          AC275F2F7654D7E38FED3FF03F4EF14E91ACE81ACDACED613FCCB2458592DE40
          7292C648203AB0046410718208241FDDFBFB749A364700AB0FD6BE2BFDA13C2D
          245E1BD6357B0F0F5E7892EE08CCBF62B528B3DC28FBCB16F2AA5F19214B2827
          032339AF572DC5724AD2D8F9CCF32DF6B0BC7747F21BE34F09F883E1F788E7F0
          CF88C183528584F6D756ECD18B9456CA5C42C0EE421941E0EE461D4E031FA7BE
          16FED230DD9B7F0E7C4DB882DA60B8875C6DB1C4F8FE1BA030236C73E60C21E7
          210805BEA1F891E0CF86DF1E3C357B79A45DFF0069DA5BDD4F69E7246D05F687
          7C9F2C90CB148A1E09D0E3743228CFCBB948233F97FF00107E1978CFE1A5DBC7
          AEDAFDBF462D88755B68C8B797E60A048324C2E4B2808C7049C2B3E0E3D8F675
          70AFEB186D60F7F2F5FF0033E2DD6A18C5F54C67BB516DE7E9FAA3EB9F8A5F00
          ACBC42F77E23F02C967A478826733CD6EE48B3BF27259BE507CA90921B7A8218
          EE2CA59F7AFC63AD699AEF867514D33C47A66A9E1AD65584B0AC8DB1F7215612
          412A1C36D250878D8ED6C721860745E00F8DBE37F872B6D63A75C41ADF86108F
          F894DE310880003104A01683A0E0064EA7665893F6368DF11FE0F7C6CB63E18B
          D4B66BF91B29A56AF02C733380C43C07255DC2AB3E6262C8393B4D74F26131DE
          F41F255FCDFF005DBEE38555C7E58B92A47DAD1EFD52FEBA3D3A2678068FF163
          C37E32B4B0F097C64D216FA15DB1D9EBF00227B46E39976FCCB928B974CAB640
          9102AB31C0F18FC23F1478741D5FC398F1D782E41E6417D625649923278F3634
          FBC00DA3CC8F2A7962B18E0765E3BFD9935AB096FB53F00EA6BAAD8E5E45D2AF
          1824D1F522386E3EEBF65025DA7BB486BC2F44F19FC43F84DA95E699A6497BE1
          8BDDFE75CE97A8DA9304C72C3CC31123863BBF7B130DFB07CCC140A9C5292B43
          31837DA6B7F9F7F9EA3C0B836EA64F5127D69CB6F9758BF4D0D4F047C4EF13F8
          2C40DE1AD6A39B406259F4E9809ACA753BB3B53398F25D9B3195DCD82DB80C1B
          5A8DDF81BC4A1AE742B6B7F863AF905DF4FBDB9CE8F305058FD9EE828FB31DA3
          EECAA91642AAECC9277751F177C24F897134DE26D3EEFE13F8E6594349AAE9F1
          7DA6CAEE43B86E9D540241C296775461851E7100D725E20F865E2ED06CA1D6AC
          45978E3C2D21222D5F426375038C919755CB47F74927E645C81BC9ACE542BAA7
          68355A92FBD7CBE28FE5DCD238AC34AB73554F0D5DF7D14BE7F0CFFF004AEC73
          BA8DB5D594E74CD66C24B2BB31ACA6DE75077C649DAEA412B2464A9DB221646C
          65588E6BE8AF047ED73F1A3C11A3DE6867C432F8CB4F303A5A2EB133CB359CA4
          1DAC2E3991D72D92B26F242AAAB462BE4937066D35EC6D2F1EDACA4769D7C9DA
          55647285A54041512308914C806E2B95CE18832C570CB1A2BC825900019B18DC
          7D71DABE7FDBA84B9A936BD7FAD7EE5E87D7AA129C396BA4FD2FFD2FBDFA9D76
          A1AEEABAD5F5DEAFAEEAB7DADEB370DE65CDDDCBEF9277C632C7A76000180000
          0000015D0F823C21AFFC43D79740F0EAA46CAAB2DDDE4AA5A1B0889203B80416
          63860B1820B9079555675F3AB44BBD4AF6C34CD3A1375A95D4F1DB5B44323CC9
          5D82A82403819232DD00C93C035FB07F023E0F58F833C3B65A3C045DB0637179
          7663D86F2E1800D215C9C0C2AAAAE4ED5555C9C66BD0CA32F55E4EA55F817E2F
          B7F99E467D9A4B0F154687F125B792EFFE5FF00A7F09BE03685E16842685A7BB
          5ECAA16E350B9C3DD5C8C8386900002E46762854049214126BED3F03FC1ED3AF
          1D239DA2790603AE412BC679AF853F691FDA92D3E134573F0FBE1C4D6D71F11C
          A2FDA6E4C6B245A146CA183303957B865652919042822471B7624BF9F1F0B3E3
          EFC47F83DF10EEBE25F85B5996F75DBD977EB30DE48CF1EBC9BB256E5B93BB24
          ED946590938CAB3A37A598673CAD52868976E879D94F0FC5AF6D57DE93EAF767
          F52BA17ECF9A2CF6E8CB6F1B1C7A0A4D7BF67ED16081D8DBC4A76FA5701FB35F
          ED7BE0BF8BBE0EB3F12E857CC8B9F26EED27C2DC585C000B43320270C3703904
          860559495604A7ED2DFB5BF84BE13782753F146B177E6220F26D6D6161E7EA17
          0C0EC821527966C13E8AAACEC42AB11E67B4AD7BDF4EE7D33A584E4B5B5EC786
          FC41F861A16912C51BDED8DA4B3CBE45BAC922A99A4DA5B6267EF36158E07385
          27B57C5BF167E05E89E2C88FF6A5988356854ADAEA30AE27B71927693FC71E49
          CA3647391860187E6F7C5EF8D7E3BF8E3E2F93C65E3CD4CDC5D2330D3ECE263F
          67D2222C1847003D0E510B487E6765527015557EC7FD9BBF69FB8F12DCD8FC2F
          F8A77DF6CD4E5C43A3EB33B7CD7671C5B5CB1EB376494FFACE15BF798697D3CB
          F39527EC6A6B17DFA9F339BF0F24BDBD1F764BAADD7F5D4F8CFC69E15D7BC03A
          FCFA06BF12EFF9A4B4BA45222BF841C79899CE08CA878C925091C956477E51E6
          0EBB77C919E086572AC841C821860820E0820E411915FAA3F1D7E0F58F8E7C3B
          71A6BB9B4BE8DBED3A7DD85CFD96E0021491FC48412ACBD4AB1C104061F920D2
          DCC125C5ADEDBBD95F432BDBDC40E72D04C8C55D091C12ACAC38F4AF3B38CB95
          092A94FE096DE4FB7F91E970FE6D2C445D2ADFC48EFE6BA3FF003FF828F72F18
          FC75F8A9E3DD22CB40F11F8CB517D122B416935A5AB1823D47E52ACF7414E656
          70D8642445C0C46A724F99D945737D23DBD8476CAB16C59659E78EDEDAD43676
          F9D3C8563881DAD80C416DAC143118AE56498C91488B2C909652372E372F1D46
          72334C823883D85BC5199A7DFE4DB039772F23FDD4CE4EE676E83A93EB5E646B
          29CEF52EFCBFAFF23D6A945C21CB46D1F37D3F2BFDE7B268DE26F07F83DEDAFA
          C746FF008581E2C8C2BC77B77E641A558C99C8686DDC2CB70E8C17E791631950
          C853A9E77C53E35F10F8C7524BDF12EAF7DAC4EF700DA5A0C98A190960896F6E
          BC6FC3940403230382CC6B42D3E1A6AF6F6306B1E3DD7349F855A2CA1DA2FED7
          07EDF76AB827ECF6208919BA8C36D6070423835D5C1F14BC07F0FAD23B6F84BE
          166D735EDAE1BC45E208FF007A372A731C436BED201568C790015070D935F432
          A155D351C4C951A7FCBD5FFDBBBBF591F230C561D5573C1C1E22B6DCDF657FDB
          DF0AF489B1E17F83D7C2D97C4BF14752B7F87DE104653B279D12EEE893F2A9CE
          5610C4A8C1CCA72576A361841E23F8C96D0E9327833E1569327827C20A191AF1
          4B477B7A781E606CEF8F214932313336E0498D9486F32127C49F8BFAE5B33C7A
          DF8DB5588BAA49E5AA5BD8E402C33F2C3065767A3380BF7CD7D2FE01FD9823B6
          B9B5D57E206B09AA4B190E34CB12CB6DB876966204928C80400231D55838CE77
          C346A548F26021C917BCDEEFE7FA239F193A34A4AAE6B5154A8B6847E15F2EAF
          CE47CD9E12F0A789FC6928B0F0668ADA9A44FE449286115AD990071249D17019
          7E450CF8390A466BEDCF87DF077C2DF0D2DCF8B7C51A8D95E6B96D1492CBA8DD
          388ADB4D4C1DC620C76A6172A6563B882FCAAB14187E29F8FDF0CBE1D5A1F0E7
          83AD2DBC4BA8598FB3C763A60586CAD080708D3805140C152B187653C151CE3E
          37F1D7C53F17FC449567F15EAB09D361732C1616EBE55A5B118C36D24977181F
          3B96232DB768622973E0F01AA7CF53F2FF002FC596E9E6199E935ECA8BFBDAFD
          7F05EA7D13F153F68DBBD5D6FF00C31F0F25BAD2748C1867D59731DC5D03C116
          FF00C512F6F33873C95D98576F1BF865F0F35AF897AFDA7873415FB1699098FE
          DF751A802C2DFF00D8182BE610A55148233C90555AAD7C38F827E35F88B7092C
          B6F79E14F0D070B25F5CC05669C7522DA2700B718C4AC3CBF9811E66196BF4D3
          C196BF0D7E0A5AF85FC3DF63B89355D46E041A4E87A6426EB54D72E36F2523CE
          E73841BA690AC6800DEEA315CEB0F56B3FACE2F48F45DFFE07E676C7154282FA
          9E015E7D5EF6F57D5F96C8FB0BF66CF835A7689A768BA468FA625868F6A8B1C1
          12E4E0772CC725989259989258924924935FAE1E07F0EC7A558C2044AB803F3A
          F0BF813E12BC83C37A1DDEB7A45B68BACC96F1C973691CFE7ADA484026312800
          3ED271B8000E32057D736902C68A00014703EB5E2E638AE79596C7DB64796AA3
          4F5DCB68A1140EFDE9D4515E61F4214514500145145001451450014514500145
          1450014514500145145004530CA678E0D79678CF4DFB4DBCC02E4E33D2BD6080
          4107A5626A362B711B23283E87D6AE12B3B98D68732B1F827FB5E7EC98FE2DD7
          AFFE29FC28D6AE7E1AFC6B8E2006A36CFE5DBEB4100D915FA00C24185540E55B
          0020659163441F9A5A5FED197DE1FF00114DF0F7E3E785E6F0578C6D4AC7717B
          6F19780962DB1A5854B322B0DA0491992363B9B31A8E3FA8BF887E0117F14EE9
          16EC83DABF2DBF68DFD98BC23F12AC27D3FC5BA02DD4B1A48B697D08D97560CD
          FC50CB8C8E4292A728DB46E560315F4D9762E7177A32B3EDD1FF005DCFCFB3EC
          AA9CD72D78F347BADD7F5D99F95DAF7ECE3F0CFC6D64BE21F86DAE5A787E1B81
          BA2974B74BAD366F7584305503D226419EA0D7CC7E2BF815F14FC2F1DDC977E1
          9FF84934B41FEBF4926EFCC0582A8F230262DCE4808CAA01F9B0335F36FED85F
          0C3FE0A85FB16789350F1E7ECB7E1EF027C6DF86729924924D2344BC3ACD880A
          C156FF004D5BB68EF02AB1DB2C68E370663143F2E7E58F813FF070AEABA6DE7F
          C231FB59FC0578AF2095A1B9D5FC1EC619A0652AA525D32EDFEF821CB309D704
          0023AE9AF3C155972E2A0E94FBAD9FE9F87CCF1B0D4332A11E6C1D455A9F67BA
          FD7F1F91FA41E0BF8EDF117C252793A3F8BE7D6EC21251F4FD549BC8D0FA1662
          264233C2890018E410315EF12FED0DF0DFE225AAF877E2BFC3E9ADB4F32978EE
          62717715B10AD89770093C5260903CA562376376335F3F689FF053AFF8260FC7
          8FB1AEBFF13BC29A3EB122C6883C53A2CFA7DC5A33E06D178F1EC423805965DA
          31F7B1CD76B37817F674F8C2F716BFB377ED35F0B2EBC40A1634B5B3D62D3C49
          6D0E178CC30DCA5C1627049698E79E39C8ECC3D1C5415B0B5A3563D9B5FD7E27
          998DC460A6F9B1D879D19FF324F4F3BA4BF265AD5FE1DFC31D70193E14FC59F0
          E35F30678F46D72F04331E842A3B01322850D8F32372C4F2E0735E51E24D03C5
          FF000DEFA3BCD76CB5DF07DCB8548752B79DA24946E6DAB1DE42DB493CB6C0FB
          803C819AF00F8D1FB35FFC14D7C1F34F2FC2AB3FD93BE39E85BD52288DADF691
          A83F072CF6F73786DD54118E2E189CF4AFCFEF107C6AFF0082B8FC1CFB707FD9
          0757F0BDB342CD7571E1CF0FEB12C0D10EBE6CD6178C9B47270CDC579F8CC24E
          2F9A7879539778DDAFBB6FBA48F532DC7D392E4A78C85587F2CECA5F7E8FEF8B
          3F55EE279AF7529758BCBDBCBFD42407CD9A59373DC1279795CFCD23FF00B6E4
          B7BD486E71DEBF9EED5BFE0A75FB4FF857539F49D77E18FC2BF0E6AD12AACB69
          77A36A36F2A753978DAEC1DC724962327B93543FE1EBDFB457FD09BF05FF00F0
          5D7DFF00C995F295AB3736DB6DF9EE7DE61B0BCB4D28A49765B7CB45F91FD64F
          EC89E0C83C61F11EF75BBA8C4EBA34119B7429C7DA27DE8240C1BAAC71CCBB48
          20F9C0F05457ECE6BBE1DD7B45F871AF37855ACAD3C4CD6130D3E5B952628EE4
          C67CB6900C9281F6E7DB35F927FF00044AD73C4FF1AFF663F06FC67F1A5BF876
          DF5FF156ADA95E3C3A6412470DBC76F72F62A8048EEDFF002E4CFF00788CC871
          8AFE8E3C41F0E8DD78536C51127CAEC3DABEBE9558D2A14E9F7577F3D7F2B1F1
          6B0B2C4626B56ECF957FDBBA7E7767F1FF00AC7F6D596B3ACD9F8957508FC4D1
          DD4A352176FBE7FB5162D2348D92199998B160486DDB81208273BED5EA715FA5
          1FB72FECD5E32F12787FC4DAC7C23FF844745F8CD0405F4C9F59B5924B1D4593
          245B5DF94E8E15B955941263241C38050FF1BFE37FF8293FED6DF0DBC5FE23F0
          178EFE17FC28F0B78C748BB92C751D3EEF4BBE596D66438656FF004CC1F50C09
          04104120835E1669974F0ED4F784B67FA3F33DEC9735862EF4F6A91DD7EABCBF
          E18FE8E3E18FC55F15FC27F155BF8A3C27A94D6CCC162BEB5DC7C9D46004FEEE
          55F519628FD50938E19959DF13FE2BF8B7E2DF8A24F1478BAFCDC488AD0D8DAA
          1220D3A0C83B23524FCCC5559DCF2EC07455454FE677FE1EBDFB457FD09BF05F
          FF0005D7DFFC9949FF000F5EFDA2BFE84DF82FFF0082EBEFFE4CAF3BEB93E4F6
          77D0F5BFB3E3ED3DADBDEEFF00D7E67F443F69CF7AB7610EA3AAEA3A7E97A45B
          5DDF6B1733A41690DBB6D964989F9423646D6CE0EEC80B8DC480091FCF1E93FF
          000548FDA7B5FD574CD0B42F877F09F59D6EF6E23B4B3B3B4D2350967BB9DD82
          A45146B7659DD99828500924803935FD7E7FC13CBF678F8A969E15F0BF8E3F68
          3D3BC2B07C6DBF83CDB8D3B4781D6D3C3B13F22DC17965325C630249436DCFC8
          9F286797BF2BCBE589937B463BBFEBAB3CBCEF348E12293D672D22BBF9FA2EBF
          71FA75E1CF0AEBB79F0E7C3F0F892ED758F11C3A7C11DFDDAA80B7372B1A8924
          002A8019831C05039E83A57E36FED59E1387C1DF1496EAD6D12CED758B5374D8
          CFEF6E6260933019C2FCAD6C480065998F24935FD32E85F0E3ECBE12FDEC3FF2
          CBB8F6AFE643FE0BA9F10BC73FB3AFC0CD0FE2D7C39F0CF85B5BD72C3C596D61
          7926AB04B2C769A7DC413872A22923605A78EC97AE3DBA63DFC4D55570F521DB
          55F2FF008173E768E125431546AFF368FE7FF06C7CEC2E47AE2A283519745BAB
          CD66CB5AD5F42B996DFECD713DAEA12DB6F80904C6E51D4142554953C1207A57
          F3C7FF000F5EFDA27FE84DF831FF0082EBEFFE4CAD1D07FE0A71FB51F897C43A
          65AF85BE1D7C33D4FC50498ED134DD3B53FB436782144779B8E738FC6BE42855
          6A6B95B4FCB73EDB1386BC1F324D79EDF3DCFE8FBC3DE02F14EBD67FDABA7697
          63A368B2BEFF00ED2D5265B0B49090732091C6655F97968D5F1819AF56D13C2F
          FB3EE8A2DA7F1BFC4F8BC7178464DAE8A656B2570BBB6B4B6FB9988C11967456
          C8CA02457E247C3CD47FE0AB9F13FCAD5747FD937E116916B2A990DEEBB11D37
          8CF56171A82C99EF8DB93D6BEF6F097C2DF8EBE15B59356FDAABF6A3FD867E0E
          5A24898B6D3A3BAB8DE857244973797F6AB1481B8C049410339AFAEC160EAC57
          3D3C336FF9A6F4FB9F2AFC59F01996634652F67571A947F9692D7E6D733FC11F
          755C7ED4D69A3E9E345F86FF000DF4FF000E6931478B417A523481C9C91F64B7
          F936E4B9E25073CE3935F3F6BDF107C79F123539349D5FC43E24F15DDCC1C8D1
          AC95D9193192A2CA01FBC500672EAE401927A9AD0FF85CDFF04D8F85F636779E
          37FDAB7E1378E2F19D583C3E2882F36385C3016FA73122327271287C71F31AE0
          BC4BFF0005A9FF008272FC23B09F4EF87B73E2AF192C6CEAB67E14F0A9B58998
          6483BAE7ECC9B5893F30CF5CD75622955A8BFDB31118AEC9AFF81FA9CB82AF46
          93FF0084FC24A72FE6927F7DDDFF0043E89F0C7ECD7F1375DB851AD47A7782F4
          FF009B74B7322DCCC783B4A43136181206773A100F427207D13A4FC24F82FF00
          0663B6F14F8BF55B59B504903DB5EEB73AB14947CC05AC0005F3011952AAD2F6
          DC6BF9E0F1D7FC177FF6A6F8CBE31B6F057EC7BFB37E95A7492B94821B9B4B9F
          116AF7DF3ED57586DC471C208640536CB86FF96841AFD3BFD89FF64FFDBBBE3C
          DFB7C4AFDB52DBC09F09F4A9CA08747B2B7B9BCF11EA31EDCE67B996EE68ACE3
          194558CACAE4070521DAACD86171185A6ED82A6E72FE67B2FEBD11D58AC163AB
          46F98D554E2FEC4777F77EAD9F661F8D7F113E2EF89AE7E1BFECE7E1D963D40B
          05935CBB55CC10EE61E7ED6564B788EDC87903BB0DCAB107DA2BF5CFF63BFD94
          B40F84535CF89EFAF2FBC6DF143538D5356F116A05A4B8987CA4C30972CD1C39
          443B7259B647B99847184D3F80DFB3CF873C11A55AE89E10F0D59E81A5821D96
          2525E66C05DF2C8D9791F0AA0BB92C7039E2BF4AFC05E035D3A184B438381DAB
          8B30C549BE6AB2BCBF05E87D06479642292A51E58FE2FD5FE9B1E8FE10D3CDB5
          BC40A95C0AF4884613EBCD67D8D92C281554003AD6AF4E95F35295DDCFBDA50E
          5560A28A2A4D428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A002919430C30C8A5A28031EFB4D8AE5195D411D335E25E33F86D69AAC32FE
          E14923D2BE85AAF2DBA4808C0FA1E95A53AAE2F439EB61E335667E557C43F818
          E8D3CB0DB9EBE95F877FB75FC23FD806FF00C41A0F857F6D6F0A7C27D2F54D4E
          13168DAFF8B34F6D3A39951C7FA35BF880AC691CD962DF64170B2B2867F2CA02
          D5FD70F883C356D790C80C4A49E0F15F00FED19FB3CF817E28784F5EF05FC42F
          037863C7FE0CBF4D97BA4EB3A7C57B6776A183012432AB23619430C8E0804722
          BE83059A36B92567EA7C5669C3D08CBDA42E9F968CFE36FC63FF00041DFD81FE
          2B69A7C57F06BC75F123C1FA5CF6E52C66F0F788EDF56D2DE41FF2D09B88E692
          4F70B3A8FA57C4DE30FF008372FC516C613E06FDA9341D57AF989AB785A4B5DB
          E9B5A2B8973F90AFBEFF0069CFF837B24F0278975AF88BFF0004FDF8FF00E38F
          D9C7C5521731E8979AADEAD92827FD5C3A95BB1BB8231E8E2E09F515F937E2AD
          1FFE0BEFFB35EA92699717FF00B49F8CED6DDCC70DE5818BC5D6F748090AE095
          B870085CE24557008DCAA4E2BAEA470DBD6C3BF58BD3F0B1E243EBA9F2E1F18B
          D26ACFF1BDFE454BAFF82087ED9DE1CBC93FE115F8B9F04E4B7E4ACC9AAEA368
          EC7DD56D8E3F3AE4758FF822DFFC145234783FE12EF87BAEDB804909E30B80A7
          F09625156AF3F6AEFF0082EDEA492584BE19FDA7E0321DA4C7F08D2161F471A7
          0DBF5CD79678ABE057FC1647F69580F873C7DE1FFDA6FC4DA25EFF00ADD3F5DD
          50E99A74B860C3CD8279618060852372F0471D288D2C0C95A950AADF65A7F9FE
          44D5AF9AC1F357C5508AEED5FF0058FE67E737C68F849AC7C13F1B5DF813C45E
          2CF87DE2DF104081EF24F0DEB31EA96D6D2127F74F731663328C6595598AE70D
          83903C9ABE82FDA23F668F88FF00B2DF89B42F02FC5BB8F08587C41BAB01A85E
          685A76A91DF5CE871B3111A5EBC3BA1492451E62A248E763231DBB973F3ED7C8
          E328BA7565071E56BA3DD7AF99FA0E5B5A35A842A466A69AF896CFCD6FA76D5E
          9D59FE81FF00F06DE78C74AF127EC35F0CB45B6B98A7B9F0FEB9AD691768BD61
          99EFA4BC0ADEFE5DF44DF4615FD7ADAAD8B786D7CE11E3CBFE95FE79DFF06C07
          ED0D1695E20F8EFF00B3A6A5A808E4F32DBC6BA4DB6D3F3A9D9697AFBB6E0608
          D30609C9DDC0E1ABFB78F897F1CF4BF877F093C53E38D61EFDF47D1F49B9D56E
          C59C0D3CED0431348E238901691F6A1C228C938039AFA19C5D5A54A51ED6FBB4
          3E730952386AF5A12EEDFDFAFEA7C07FF051EFDA0FE0B7ECB5F0C3C5BF18FE2B
          EBF0E8BE19D3D4A4514415EEB54BB607CAB4B48891E64F215202E400033B32A2
          3BAFF9A0FED6DFB49F893F6B5F8F9E3AF8E7E26D1F4BF0EDC6AB2C715A69F68A
          36D959C482382279300CD20445DD2372CD9C0550A8BEF5FF000520FF0082887C
          57FF008289FC74BFF891E339AF341F875A7BCD6DE10F0B898B41A259B372EE07
          CAF752ED46965EE55546123451F9E95E76619ACEA535878BF717E2FBFF0091E8
          E5990C295678B9AFDE495BD176FF0030A2B5742D075CF146B5A5786FC33A36AB
          E22F115FDC47696361616EF71737B3BB0548A2890167762400AA092480056EFC
          40F879E3AF853E2FD6BC01F12BC27AF781FC69A74822BDD3352B66827B725432
          92AC39565656561956565604820D793ECA5CBCF6D36BF43DB7561CFECDB5CD6B
          DBADBBDBB799E8DFB31FC78D5FF664F8F1F0DFE39E89E1FD17C557DE1FBE3727
          4EBF5062BA89E368A450D826393648FB2500947DAD86C6D3FE95DFF04D5FDA4F
          E09FED69F0CFC33F177E156BB6DA9E937388AFACA565179A2DE000C969771024
          C72AE41F4652AEA591D58FF96CD7DC3FB02FEDEDF19BFE09F7F1BF4DF8B3F0B2
          F5B52D06E1A2B6F13786AE262B67E23B157C98DF83E5CC996314E0168D89E191
          E48DFD5CBB3695283A12F81FE0FB9E266B9053AD5A38B8AFDE474F55BDBFC8FF
          0060EBD4B15F0CB08427FAB3D3E95FC677FC1CC7E2C87C3DFB1FAE8E2D8DC1D7
          BC71A5E94AEAD8F20A457377BC8EE3FD08AE3FDA1E95FD2A7C11FDA4347F8D9F
          00BE1D7C58D021D5F4FF000FF89BC3D63E20B183508BC9B982DEEADD26449A3C
          90B2059002012339C1239AFE1EFF00E0E72F8E43C49F18BE03FC0EB1BD93CAD3
          34CBDF14EA10A487648F732FD9EDCBAE31B916D2EB1CE4098F00119F4ACE950A
          927D55BEFD0F36BCE388C451847A3BFDDA9FCB8D7B17C0FF0084BA77C6AF1AA7
          81EF7E2E7C27F839772C0D25A6A1E33BDB8B2D3EE645C1309BA8E1952172BB98
          198C68DB7687DEC88DE3B5F53FECA3FB2AEB9FB5D78CB57F86DE09F897F0BBC1
          1F10A3B6177A5E9BE27BB9ED46BEA3779B1DACB1432869D0046F2880594B30E2
          3723C0C051954AD18463CCDF4DAFE47D0E6D5E3430D3AB39F224BE2B5EDE76D7
          4EFE5DB73F48FC37FF000410FDA77C416961AA47F17FF6759745B98D66B7BCB0
          D4AF6F229E2600ABC6CB6C1594820820E0D7B0E8DFF06EE7C58B99EDC6B5FB48
          7C3CD3ED89FDEB5AE89733BA8FF6559E307F122BE4FD0FFE09DFFF00056BF801
          2DFC9F0B3C3BF133C316827DCD2F83FC756D02DD91D1FC986ED2461FEFA03ED5
          DEDB699FF05DF82348206FDAF1D546D05AE8C87FEFA2C49FCEBEB5E1B090D2AE
          12A27EADFF0091F9F43199855D686614A51EF68AFD647E877C3FFF0083747E11
          5A5ECB27C4DFDA3BE2578B34E31E122D0747B5D22447F569276BC0C3DB68FAD7
          D3307FC12BBFE091DFB355A69D27C6DBFF000BA5E247BD6EFE2078FBEC6F72A4
          E3718525B6858678E23C57E517C3EFD853FE0B6FFB4EEA31D8FC40F899F193E1
          C7846E03C77179E30F1EDC416C146329F60B79649896078CC2109182C3AD7ED6
          7EC4BFF06E97ECE5F0D3C49A4F8EBF683F106AFF00B4DF8BE0B85BA8EC2FECC5
          9E861C1C8F3ACF7C8F75CF244B218D870D1904E6E1EC92BD2C328AEF2FF27763
          70AEDDABE31C9F682FD55923F46FF618BAFD9A3E27E857FA3FEC77E02B1B1F83
          56334C8FAE681E153A3787AEEF924F29E3B491E387EDD265096B8B74961F970D
          2EE2AA7F653E1E7C0C0A22927B63DBB5777F077E14E97A1699A669DA769365A5
          E9B6F12C305BDBC2B1C5046A301111400AA00C0038AFB3744D0A0B58A3558946
          071C579D8ECD676E45F81F4594F0F534FDA35F7EACE13C27F0FAD34A8A30B0A2
          E31DBA57AE5A584702008A157F53572385500E3247E953578139B93BB3ED2950
          8C15908000000302968A2A0D828A28A0028A28A0028A28A0028A28A0028A28A0
          028A28A0028A28A0028A28A0028A28A0028A28A0086688480F193FCEB83F1078
          62DF518A406356C8C735E854D64571C8E7D6AA326B62274D49599F0C78E7E09C
          1A8099A3801CE7B57C75E3AF807A8DBC17B269F6913DDEC6310932A8CF8E0310
          090338E403F4AFD9BB9D3619D58322B0FA570BAE7836CAFA3933023120F38AF5
          F099BD4A7A5CF99CC786E8D6D5A3F909F8EFE15FF82A7E8D26B107C24F837FB1
          9DEC2849B4BAD53C59ABCCF22F60F6C2D2DC06FA4D8F7AFC9FF89FF06BFE0BD9
          F1AB52D4349D4FC5FF0003BF672F0BC91C714A9E1BBF48237C38CC915C2A5D5F
          2377204A80804639C57F7A7E2AF8396B7BE6B2DB28CE7B57CA1F127E0B43A569
          7AA6A8FA75F5DC76F0BCED15ADBB4B34814676C71A82CCC71800724F15EFD0CD
          155D2A54925E4EDF91F178CE1C743DEA5460DF771BFE6EC7F9B9FEDAFF00B03E
          93FB2DE87F0DFE1FEB7E32F127ED1DFB6BFC4DD711A274DE96FA7DBEE4593CB0
          F299AE2EA7BA95235B89FE478C4DFBB8DD43D7C25FB5AFEC95F143F634F89D67
          F0BBE294BA06A1A95D6936DAC59DFE9533CB677B049B95BCB67547CA4B14D110
          CAA7E4DD8DACA4FF00729F093FE09E1F15BC7BFB52F8D3F6F7FDA77C3765E19F
          1BCB62342F873E080F1DCC9E07D1543013DECE9946D4A6124E59222C9089E550
          F26E023F97FF00E0B05FB04EADFB47FC01B8D47C27A5BDCFC5DF0619F58D0235
          4CBEA30951F6AB10704EE912357403ACB0C4B901890EBE47431342A55A2AD35F
          0AEE96F7EADCB7FB91CB87E26C660715468E25F35277E797694B6B5B4518D92D
          34D5BF33F90CFD8BFF00699D73F642FDA63E157C7DD1A2BABDB7D17500354B28
          9B0DA869B2A98AE61009505CC4EE5371DA245427A57FA69FC35F8CDE10F8E7F0
          83C2BF107E1DF892CFC55E0CD6F4E8B50D32FEDCB04BA8245CAB6D60191BB146
          019482AC01040FF28960CACCAEA559490411820FA11DABF7B7FE08EBFF00056D
          4FD8DB506F807F1EF50D56F7F671D46ECCFA75FA235C49E0EBB91B32308C65DA
          CE424BBA20251F73AA93249BBE7724CC234E5ECAA7C2F6F27FF04FB4E25CAA75
          63EDA8EB24ACD775FE68F4CFF82C1FFC128352F869E24F187ED3DFB37785D64F
          873712497FE29F0BE9F01DDA04849325ED9C4A39B3272CF12FFA824B28F2B221
          FE793C31E19F1178D7C45A27847C21A26A9E25F13EA5731D9D869F630B4D3DE4
          CE70A91C6A096624F415FEA6D0D8784FE2B787347F15785356D23C45A06A5691
          5F58DF594E93DBDEDB4A81E396291095923756565604820823835F2EFC16FF00
          825C7ECE3F0A3E3278ABE367C35F841A0F863E22EB65C5E5FC2F2BA441DB749F
          668198C56DBCFDEF25533D3A715EF63F20A156A2AB097227F12FD57F97FC31F2
          994F15632852950A90F68D7C2FF497A775AF4F33F2ABFE0981FF0004AFD3FF00
          654D06DBE277C48D3B4AF157ED197F09DF728A2683C2B03AE0DADA3F469882C2
          49C633B8C69F206693CCFF00E0B25FB20697F1D752FD9C9ADBEC5E17F89F737B
          AD6949AD3DB190CBA7DAE8B7FAA9B6914152E37D830424FEECCF21C1DC41FEC3
          FC0BFB3EDA5969A1A7B64DFB79C8AFCB6FF8282FC0FB2D4FF680FD807C3F3DAB
          369DAA78F3C4BA6CE10ED2C8FE08F1012011D0E10F35EC3CD30CE87D4211FDD5
          D69F35ADFBF99F3AB8731AB17FDAF566DD7B4B5EDEEBB24BB796DDCFF32B6492
          3D8258DE22CA180618C82320FD0D7EF5FF00C121BFE096FA87ED05E2BF0EFED0
          FF001F3C332C7F036C675B9D1347BC8C8FF84BAE11B2AF246473628464E78998
          6DE503E7FA47F887FF00048DFD967E2427C09B2F1B7C2CB7D5E2F87B676BA568
          CE6431BEA1A74116C8ECF5064C7DAE00C166D8FF00C7BF042CD324BF7DC7A578
          2FE10F856F7C41E23D4BC3FE0FF0A69164D3DC5D5DCD1DAD9E9B6B1264BBBB15
          48A2445C92485503B015E4E0786A951A9ED2AC94D2D979F9FA7E3F81EFE6BC67
          88C4D15470F074DBBF337D15FECF9B5D7A6CAFB9D1FC4CF8CFE0FF0080FF0007
          7C59F113E22788AD3C2DE0CD134E9750D4AF67276C1122E4E00E5DC9C2AA282C
          EC555412403FE659FB537C7FF11FED47FB427C57F8F5E2832C7A8F88F5692EE1
          B776DDF62B35023B6B707D23863863CF7DB9EF5FAA1FF0586FF82AD37ED9DE21
          1F03FE095DDCDAFECD7A35EADCBDF346F0CDE2EBE4DC167746C325A264F97132
          8666FDE38CF96B1FE1764735E067B98C6ACBD9D3F857E2FF00E01F5BC2F944E8
          C3DB56F89AB25D97F9BFF23D43E0C7C25F177C77F8ABE03F83FE0482DE6F15F8
          87518B4EB469CB0860DC72F34A5416114681E4720121518804F15FADDFB0D7EC
          01F0E3F6BDF06FC51F83FE26D4FC4DFB3CFED7FF000CF5D7B79351B38CCE2EAD
          9E7C837B66CEBE64D6F34375109609612164837799B173F6C7FC10ABF60CD734
          F86E7F6B9F885A25FD8EA9A9DABE9FE0AB4B88CA32D8C98F3B512A4671280238
          8F198FCC7C32CB1B0FDB7F1E7FC13D3E2AF873F694F0A7EDC9FB2ED9E8F77F13
          96C9744F1FF83AF9C5BDBFC41D0C6CC8827E043A9C6228BCA79088DCC50ABB22
          AB6FF6F2DC9E950C3C313885772BDE2FF95ECD754D3D74E87CB671C455F178DA
          982C1CB96304AD35FCE9EA9F47169F2BBAB731F937F0FF00F60DFF0082E07C2B
          90689F0C3F6D0F86FE24F0D9C057F115DCDA8BAA827002DF69F72C99EE11FBF5
          E2BF603F67EF825FF0555B9D5FC3D6DF19BC55FB0DBF85D1717F368BA16BB36A
          331FF64BDC43003D790A074E2BF73FE1FF00C0F8EF2C34FBD6D3E7B532C49208
          E68F6C91EE00ED65ECC3A11D8D7D4BE16F8416763E5BB5B29C7B515B32852D29
          CE56ECE4D9B61387E75ECEB5385FBA8A4FF03E30F027ECFD72F1DA1BB89259C2
          8DECB195566C724292703DB27EA6BEC3F057C1AB6D3044CD6E011CE36D7D13A3
          7852CEC9142C0A0FD3935D9C363144061557E82BC2C566B52A753ECB2EE1EA34
          52B2397D0FC3D069F1A2A4607A01DEBB28E3118ED9A7AAAA8C280296BCA6DBDC
          FA2841455905145148B0A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A63C6AFD783E
          B4FA2803327D3A2941DC8ADF8570DADF852DAF15F312B67BE2BD32A278958920
          9535519B5B1954A4A4AC7CCFA9FC2BB3B912936E873EA2BE19F8FF00F02C3DA5
          C4F6B6A3201FE1AFD776B442A4614FB62BCDFC69E0FB5D66CA78648436E0474A
          F530399CE94D493D8F9FCDF20A588A2E0D6E7F98DFFC1627FE0945AD787F5FF1
          37ED39FB3BF84964D39C4979E31F0D5840DE6C72EE2CFA95A44B9DCA412668D4
          02A54C80306936FF0033190457FAFAFC7FFD9E9A46BBBBB3B3F9F93C0AFE447F
          E0A29FF044CF09FC54D53C47F13FE017F66FC2DF8B771335D5EE993864D1F5E9
          59B2EE42826D276C96DE8AC8EC3E6452ED28F7B1F91C31ABEB183F8DEF1EFE6B
          CFCBEE3E1B2BE26A9954D60B32BBA6B48CF7B2ED2F2ECFA75EE7E127EC2BFF00
          0557FDA9BF60DBCB6D1BC07AF5BF8EFE1119FCDB9F06EBCEF2D92E58976B3901
          DF69231666263F9198EE78E422BFAF2FD8DFFE0E3CFD883E2BD9E9DA6FC63BDD
          67F66CF1F6638E4B6D7E07B9D32E246DE58DBEA36EAC823508B96B95B7E6450A
          1F04D7F08DF1ABF679F8D3FB3BF8964F0A7C66F877E21F02EAB9C42F73106B6B
          C1CFCD05CA168A65E0F28C71820E0822BC66BE6238DC461DFB2A8B6E8FA7EA8F
          BA797E131496228B5EF7DA8B4D3FCD33FD70BC31FF000558FD8635ED2E0B9D1B
          F6B2FD9BAEE074DEBB7C6BA686DBEA54CD91F88AF01F8CDFF0512FF8272DFDF7
          83BC59E3AFDA57F664BED4FC35A949AB68770DE2FB09E6D32FA4B3B8B3696158
          E52DB9ADAF6EE23C1F9656F6C7F95D119F4A3A76E2AE39AC53BF27E22A993CE4
          B95D4FC0FEF2FF006AFF00F838DBF635F85B1DFE8FF0274DF137ED1DE31D922A
          49A740DA76916F2AB95D935EDCA077E9B83410CA8C3F8C57F291FB6CFF00C14F
          FF006A9FDB9EFAEF4EF893E2D4F0AFC2DF3C4B6BE0DD08B41A6A6D60C8D71C97
          BB914AAB0694B05604A2C79C57E7657A67C2DF831F163E3778813C2DF08FE1EF
          8AFE20EB84AEF8B4CB37996D94B050F34806C863CB282F215519E48A8AB98623
          10FD947AF45D7F5614729C26117B79DB4FB527B7E88F34CF5F4AFD8FFF008260
          7FC12DBC5BFB5F788B49F8ABF1474ED4BC37FB3B595D8D8195A2B8F184B1B7CD
          05A9E0ADA8236CB703A9DD1C64B891A1FD01FD84BFE0855631DC68DE3BFDAD1D
          3C4DAF2CC93DBF83B4DB8DD636E060817F70BCDC3678314644636F2F286207F6
          21FB3BFECCD69A75AE8F6569A259E95A45AC51C36D6B6F0AC50DBC4A00544450
          15540000503000C57D265DC391C3A588C7FCA3D7FEDEFF002FBFB1F179AF194F
          1D2783CA2EEFA3A9D12FEEF77FDED974BEEB6FF66CFD9EEDAD6C349B6B6D2ADE
          C74DB78A382DE08A2091C11A801511470AA000001C002BF4EFC33F09ECAC6087
          16CA08033915D67C39F87967A05940A2DD632A076AF6F86CD5140002FA71CD79
          79A66F3AD51BB9F53C3FC354B0B4541238BD1FC336F648B88D001ED5D9C3631C
          6176AAA8FD6ADAC4ABCF53EF52578929367D642928AB21AA8A8381CFAD3A8A2A
          4D028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A29
          A580EFCD003AA9DC047073803BFBD4AF2000E5B15CDEABA9A5B46C4B8E055462
          DBD0CEA4D257679EF8DF43D3B50B799678E36E0F615F99FF001BBE13691762E6
          58A0895B9E82BEE3F1F78F60B08662F305C03DEBF383E317C6BB5805D462E118
          F23835F4396D59D26A57B1F159E61E9E253A6D5CFCD0F8D7F07BC39AD69FA9F8
          7BC53E1ED07C53E1E9C159EC751B48EE6DE65C630F1480AB0E4F51DEBF19FE32
          7FC12FFF0062BF1BAEA6D1FC2F9FE1D6B33B03FDA1E19D465B4683049223B673
          25AA839E7F724E3A62BF64FE22FC479B589EE0479E4915F306B367A8EAAEEC91
          48D9F406BEB3FD6BA1523C989829AF3499F9A3F0EB174A6EAE06ACA937FCADAF
          BEDA3F99F827E2DFF8233FC2F9B529A4F077C7AF1A683A4E06C8354D1E0BF994
          F7CCB1BDBA9FFBE0566F87FF00E08CBE044D56CE5F11FED11E23D57451203716
          F63E1D8AD27953B8499E79950FB946FA1AFDC8B8F87FAD5C31616F375EA01A86
          3F87DAC40D96827F5E45737D77256F99E1D5FD65F95EC762CA78A12E458C76DB
          E185FEFE5BFE373E25F843FF0004ACFD8B3C20B0FF0068F813C41F13F53598CB
          1DDF897579642A08C6C30DB79103AFFBF1B1F7AFD9BF81FF00063C23E19D274D
          F0CF827C2DE1DF06F86E1FF5361A5D9476B6F164F2447180A09EFC735F3768FA
          7EA1A6488D24522E3D8D7D2FF0FF00E204DA3CD00906002335D51E2BC3D35C98
          6A6A1E892FBDF5389F8778CAF25531D5A555AFE693697A2D97C8FD58F829F087
          4984DA4D3C31B3707915FA7BF0FF00C33A5E9B6D02C50C6A428030057E447C20
          F8DF6C7ECD1BDC2A1E3BD7E937C3BF88D6D7D14052E15B2073BABE5B31AF3AFE
          F5EE7E8D9161296112872D8FB2ECD238D142801476F4AD2073C8AE1744D692EA
          343B8367DEBB18E60C010D906BE6A5169EA7DD52A89AD0B3452020F439A5A935
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A4240EA68016
          90903A9A81E70A09C803D6B32E2FE38C125863DE9A5725C9234DE70A0F200F5A
          CAB9D4638F24B003D6B99BED7E18C1CC807D4D79BF883C5AB0C4E5651902B685
          16CE5AB8848F4EBAD763556F9C74AF1AF1C78C23B3B699CCA14004F5E95E5F79
          F114099E369B9FAD7CF9F15BE2115B19FCB9C8241EF5DB468DB5679389C5B7EE
          A3C67E387C5E922FB54305C10DC81835F9AFE2BD7355F115ECC15E49371EC6BD
          7FC67797DAFEA328DCEFB9ABB8F86DF07A5D5EE209A6B7DC09CF22B0AB59CDF2
          A37C3E1634D734B73E70F0C7C1FD57C433C6D240EE1B1FC35F5B7823F64EFB6A
          C2D73644E40EAB5F68783FE1AE8FE1BB689E7862560072457B5681ADE8B6B2A4
          31987D2AE386B2BB2278CBBB23E43B3FD8EF4C3082D651F4EEB581ACFEC91A5C
          2AE16D23EFC6DEB5FA8567A958CD6DB93CB3C579878B359B5B79189D98A6A9EA
          12AAAD747E48F8C3F65936CB2B5BDA76ECB5F2DF897E106ABA0C8ECB6EE81493
          D2BF71AEB5DD16F018A610313D735E6FE2AF871A3788AD6492086266233C0A73
          C2A6AE88A78D69D99F8D7A06A1AAE837718DD246411DEBEFFF00829F17E68A4B
          482E2E1BB0E4D7937C49F8412E917134B0DB954C920E2BCB7C3CB79A1DFC6416
          50ADEB5853AD283B33A6B61A1563CD1DCFDFBF877E3A8EFADADDBCD072077AFA
          274FD7639114871D3D6BF233E0E7C439238208A598F000E4D7D85A3FC440ED14
          6B367F1AEAAB494973238F0F88707C923EDAB7BF49003B862B4D26040CF35E0B
          A0F8AD658A32F28E47AF5AF44B2D72293187047D6B82545A3D9A7884CEF0107A
          1A5AC7B7BD47030C2B49250D593474A9264D452020F229691414514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          001451450014514C67001C5000EE147BD66DC5D040D934B7170A8A493CD79F6B
          DADADBA39DDD3DEAE31B98D4A9635AFF005B4877664515E75ACF8B638D5F130C
          FD6BCBBC53E34950B889CE7EB5E1FAB78A753B8760A5B1F5AEA8451E7D4A927B
          1EADE20F1BCCA5F64A49FAD78FEB7E38BA70E0B93F8D72777A86A531CB8761EB
          5CAEA0F3B2B6F539ADA3248E39424F73135EF164B1CACE24607D8D789F8BBC43
          73AAAB21667FC6BB1D7A1925661F3035C8268AD34CA0A9EBD715CF5710F6475D
          0C22F899CF782BC1126B3A9C65A1DC377719AFD0BF03F81EDB42D29267855182
          F5C579FF00C1CF04A493C3234593C76AFB1F56F0DB47A33242873B28A4D2572A
          BC5C9D91F1AFC46F1A1D3D6682072A471806BC0B4AF8857E9A8826570BBBD6BD
          1FE27786B5017B705D1C2727915E12346961973B4820FA529E22571D2C1C6C7D
          C3E0DF8842E6CE3579B276D725F11BC57FBB91A39BE6F635E03A2EA575A700A1
          980A76B7A95CEA2A518B1AE8FADC5C7CCE2FA8494FC8E62E3C677E979912BEDC
          E7AD7D11F0E3C646F84505C49BB38EB5F32FF62C923E429249F4EB5ED5F0DBC3
          17C6FA131A3E322B9A9E22499DB5707168F76F1B781ED75DD29E7485198AE7A5
          7E7C78D7C0EDA5EA32E22C0C9ED5FB1DA47861E4D1424C87253FA57C75F187C1
          4915C4AE908EA79C53ACD495C9C3C5C5D8F8F7C29A85C69722A825715F4A7853
          C53296477909207E35E1C74468E53F29183E9D2BB9F0FC0F094C8E476C5146B3
          D98F13864FDE47D63A378F678D5155CE3EB5EBFE1DF1C4B214DF29F7E6BE42B2
          9655552A8DB8575963AADFDB9528AE2BA5C9338E1068FBFB47F14C722A6E9067
          EB5E8363AC24A07CE39AF80346F196A103A872F8AF73F0BF8D5A6F2D5DC83F5A
          C27156B9D94EA35B9F58C1721F906AFAB061EF5E6FA2EB0B7089B5C7B577304E
          18020D72CA363D0A752E68D14C570DF5A7D49A85145140051451400514514005
          1451400514514005145140051451400514514005145140051454323E323B5002
          49200302B2EE2ED5013919A4B9B8D8080466B8BD53512A1806AB8C4C2A4C9B53
          D5D1037CE0578EF89355598380C0F5EF5635ABFBA959847BB15C1CDA75F5DB1D
          C18A9AD93B1CB3BBDCE3F508A299D99F2C4D60C9696B9242026BD317C2F2B1CB
          E686F0BC6A0E46455739838DCF22B882DC023CA1F9572DA958C0CA4EC03D4E2B
          DB6EFC3A39D8A4FE15CC5DF86E56DC04668E7638513E6BD4F46124A76A039AAB
          63A0033C7F271915EF92F83E5724F9593F4A9AD3C1B2472A168F207B572B773D
          08AB46C7A6FC23D0D208A1250678ED5F533E9B14D67B1906315E3FE02D3CD9C7
          1A9502BDA4CFB6DC0EBC56E8E78A5D4F987E247812DAEA39A4110C9E7A57C67A
          F784859DCC8BE58C66BF477C52C268DD40C9C57CD3AEF869EF2E1DC459E7AE2A
          6A2561D26EE7CAFF00D818FE1A3FB033FC3CD7D087C132E7FD5E281E099BAF94
          6B13B6E8F18D13C27F6BBA8D3CBC9CFA57D8DF0DFC076B6C90CA624CF07A579F
          68DE1892CEE11CC58E7D2BE93F09910471AE306B585AC71D66EE7A1A69914365
          E5AA8C62BE54F8BBA1A4C9332A64F35F5C098B41B7AF15E1FE3ED34DE2480296
          AB23ADCFCF2BBD031336130339E95A3A5E8CA928DE878F6AF74B9F064CF23111
          F534D8BC1F2A3731103E9582766754F54737A769D02852501AEA20B3B5DA3300
          03E95D059F86A45C0D871F4AE9ADFC35B80DCB83F4AEA533CE95238B8B4FB427
          EE053FCABA3D3218EDDD4C6C47D2BA44F0B647030695BC373C7CA034F9C231E8
          7A3786F55110405FA63BD7AEE9DAAAB85CB8FCEBE65B6B5BEB470406C76AF44D
          1352B84DAB26EA87666D0BA3E8082E95C0E456924808C13CD79EE9BA86E0A0B1
          AEBADAE3781C8CD6328D8EBA750D9A2A28DF200A96A0D828A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0043C026A8CCD8C9E6AE
          BFDD35997192AD8E7AD04CB639CBF9892C066B8EBA85E663939AECEE62249383
          59525A93D1456D168E6946E716FA6C64925431FA545F6145CED8C7E55D91B066
          EA2A55D340C1652285227D99C3FD859B236E29A74B279615DE35981D1727E951
          35931E898143920E43CFE4D1E339F93354A4D0E3E7F763F2AF4A3A79E3231519
          D3C74DA293994A07990D062FF9E793F4A906851023F76B5E8DFD9C07F093FA52
          FD80FF00707E5591A239FD26D440400315D5CAACD16003D2A28ACB6302148AD9
          8EDF726304F15B46464E1A9E6DA85A3CCCC08CD619D0909E6306BD626D303138
          5E2A04D27E6E5411F4AC9B7D4B4AC798AF872361FEA87E543787234FF9663F2A
          F66B7D2100C103F2A2E3474C70A3F2A433C546848A41118ADAD3ECCC0EA029C7
          F2AEDE4D2B04E16A4874CDAC32B8A71DC1EA5788622F9B9AE5B56B25B824119A
          EFE4B7DA98C64D64CB6459892B935A4A5A11186A7991D0A2E7118A8CE851723C
          BE7E95E97F603FDC1F951FD9FC6369AC8D1A3CF23D1231D107E02AEA692AA785
          C577034F1C7CB520D3C8190335A2999B81C60D308FBAA2945891D57A576CB64C
          320A0C54A2C948FBA45529264A877386FECF8DCE1A307F0A9A3D39139000AEB9
          F4D04642E4520B175E828E7054CCAB48DE271D715D9584C7E506B223B6231F28
          AD5B684A9180450D971563A785B38E6AF03900D66C1C05AD053902B13A22F41D
          4514505051451400514514005145140051451400514514005145140051451400
          C704E303354A48C9E315A1450268C46B42C4E4134D1603825467DEB768A05CA6
          29B21FDD19A69B3FF67F4ADCA2827D99826C47719FC28362BC7C9FA56F5140FD
          9983F601E98FC283603AE09ADEA280E439F360A78DB8FC29BFD9E7D0D7454503
          5148E7C580FEEE4D4AB698E71FA56DD14038DCC9FB283DA9C2D8290700D6A514
          0B90A4B1E3D850D113D06455DA282AC6535A86EC29A6D40ED9FC2B5E8A04E062
          359E73C1351FD8477535BF4500A3639EFECFE73B467E94A2C3FD922BA0A281B4
          8C016007F090697EC0BCFCBFA56F51413C88C2FB02FF00747E540B103A0FD2B7
          68A05ECCC3165D38FD297EC4B8FBB5B74503E4460FF678F4A916D4A9E01C56D5
          140F94A11A118E0F5ABA8081CD3A8A0AB0514514005145140051451400514514
          01FFD9}
        Properties.Caption = 'xgm.ru'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 1
        OnClick = xgmlogoClick
        Height = 265
        Width = 301
      end
      object teamliquidlogo: TcxImage
        Left = 56
        Top = 432
        Cursor = crHandPoint
        Hint = 'teamliquid.net'
        Anchors = [akLeft, akBottom]
        ParentShowHint = False
        Picture.Data = {
          0A544A504547496D616765572B0000FFD8FFE000104A46494600010100000100
          010000FFDB004300010101010101010101010101010202030202020202040303
          0203050405050504040405060706050507060404060906070808080808050609
          0A09080A07080808FFDB00430101010102020204020204080504050808080808
          0808080808080808080808080808080808080808080808080808080808080808
          08080808080808080808080808FFC00011080097009603012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEFE
          28A28A0028ACFD5756D2F42D3AF358D6F52D3F47D26DD0CB71757532C50C083A
          B3BB10AA3DC9AFCA0FDA37FE0B73FF0004FCFD9E0EA1A647F159FE3578BE02E9
          FD95E07846A4378E30D7A592D073C1C4A5873F2D7B79270D6619954F6597D195
          597F75376F57B2F99E3E73C4381CBE9FB5C7568D38FF0079A57F4EAFE47EB7D1
          5F9F3FF04E9FF82847807FE0A1FF000A7C5BF117C25E18BBF006B5A26B92691A
          9683757CB753DB4654496F705D5106C950B638C078E45CB6DC9FD06AE7CE327C
          4E5F8A9E0F190E4AB07669F47F2D3EE37CA736C3E3B0D0C5E125CF4E6AE9AEBF
          7EA7E6A7EDE1FF000550FD9B3FE09FD7FA2F85BE2A5AF8F3C53F11B54D33FB5B
          4CD0F44D38399ED8C8F12C925CCAC90C6A5E290637338DB9D98233FCD9FED1BF
          F07217ED51F10C5FE8FF00B3E780BC11F003427DC91DFDC01AD6AC0740C24995
          6DD0E3B792C41E8D5F4FFF00C1CFBF0D25F37F64FF008C56D013095D63C337B2
          E3EEB660B8B7527DFF00D2CFE06BF92FAFEDAF03BC28E1DC664B4336C451F6B5
          657BF3BBC53526ADCBF0F4BEA99FC75E33789F9FE1737AD95D0ADECA946D6E55
          66D38A7F16FD7A347FA6B7FC13ABE29789BE357EC3DFB32FC50F1A6BF7BE2AF1
          86ADE16B69B55D46E0832DE5E2168E591F680325E36E805792FF00C1603E2E5D
          7C18FF008273FED35E24D36F65B1D6751D1A3F0D5A3C6C55F76A1711DA3ED239
          04453CCD91D36D7807FC1003E2447E3BFF00826F7C3FD04DCADC5E78535FD67C
          3D30CF299B9378808FF72F900FA57977FC1C83AECBA57EC07E1AD2E290A0D4FE
          22E956B2007EFA25A5F4D8FF00BEA243F857F3C60387231E3C5974A3682C4EDD
          3954EE95BB38FE07EF58EE2093E0978F8CAF2787DFAF33859BF5B9FCB9FECEBF
          F0569FDBDFF6665B0D3FC13F1E7C45E2AF09DB808BA178AFFE27164107444F3C
          99615F68A44AFDE3FD9E3FE0E67F05EA7F61D23F6A4F807AC785AE89092EB7E0
          CB91776E4FF79AC6E19648D47FB32C87D057F1F95F62FEC41FB13FC5EFDBAFE3
          6691F08FE17583DB69C852EBC45AFCD11367E1CD3F761A798F1B9CF2B1C40EE9
          1B81801997FB6B8E7C33E16C561EA63334A31A6A29B94E3EE35E6DC6D77EA9DC
          FE3AE0BF1138970D5E184CB6B4A6E4D2507EFA7E493BD97A347FA0DFECF1FF00
          0503FD8E3F6A78AD63F829F1F7C09E25D765008D16E6E0D86A8A4F6FB15C08E6
          6C74CAA95F7AFB22BFCC57F6E3FD93BC5BFB0F7ED3BE3FF80BAFEA371AAC3A5C
          D1DEE85AC797E49D5B4C946FB7B90013B5F19470090B247228276E6BD8BF676F
          F82B4FEDEFFB338B1B0F057C7AF11F8ABC29000ABA1F8ACFF6C596C1D113CF26
          5857DA2912BF9E335FA314315878E3B87B16A74E694A2AA2B5D3575EF457E0E2
          BCCFDEB2CFA474F0D5E583CF70AE1520DC64E0EF669D9FBADFE527E47FA44515
          FCAB7ECEBFF0733783F536B1D1FF006A6F809AA7862E09092EB9E0CB9FB55BE7
          FBCD6370CB2228EFB6690FA0AFDE3FD9EBFE0A05FB1C7ED4B1DA47F053E3F780
          BC4DAE4CA08D16E2E7EC3AA293DBEC5702398E3A65548F7AFC1389FC2ECFB28B
          CB1D869282FB4BDE8FFE051BA5F3B33F6FE1CF12724CD6CB07888B93FB2FDD97
          FE032B37F2BA3EC6A28A2BE04FB80A28A2800A2BE08FD873FE0A33FB3A7EDE3E
          139350F861AF7F607C45B28C1D73C1DAA4A89A9E94DD0BAA838B8B7CF0278F2B
          C80C118ED1F7BD7A39B6518AC0622585C65370A91DD3567FF0DD9AD1EE8F3F2B
          CD70D8DA11C4E126A74E5B35B7F5DD6EBA9F985FF056DFD8A350FDB77F646F14
          7837C1EF72BF15FC3F27FC247E178926644D46E6243BECA45C85613465917770
          B2889B20039FF39DBCB3BBD3AEEEB4FD42D6E6C6FE091A19E0990A490C8A70C8
          EA7956041041E4115FEB3F5FC6C7FC17E3FE09A171E01F156A7FB71FC14F0F33
          78135AB953E3FD3ED63E348D4A460ABA9051D21B8620487F86621893E77CBFD4
          9F469F132185AAF87F1B2B42A3BD36FA49EF1FFB7B75FDEBADE47F367D21FC3A
          962692CF3091BCE0AD512EB15B4BFEDDD9F96BB23F30BFE0923FB74CDFB0C7ED
          57A17893C497D347F05FC50B1F87FC65172560B667062BE0A3ABDBC877F00931
          B4CA397AFF0045BB2BDB3D4ACED351D3AEEDAFF4FB889668278640F1CD1B0055
          D1864329041047041AFF00260AFEC87FE080BFF052F83C75E18D2FF61AF8D9E2
          045F1BE8D6CDFF000AFF0051BA939D5B4E452CDA6331EB340A0B443F8A105463
          C91BBEBFE92BE194B154971060A379D356A89758ADA5FF006EECFF00BB67B44F
          95FA3CF88D1C355FEC3C64AD09BBD36FA49EF1FF00B7B75FDED3791F7D7FC177
          3E06CDF1A3FE09DBF13753D3ACC5E6BDE0ABEB3F1A5A80B961140CD15C907B05
          B6B9B873FF005CEBFCF92BFD623C5BE16D0BC71E15F13782BC516116ABE1AD63
          4FB8D2F51B57FBB736D346D1C919F664761F8D7F9817ED6DFB3C788FF652FDA3
          FE2F7C00F130B892EFC39AC4B6B6B7322ED37F62D892D6E40F49607864C76DC4
          76A8FA2A71446A60F1193CDFBD07CF1FF0CAC9DBD1A5FF008115F49AE1A94315
          433682F766B925FE2576BEF4DFFE027F471FF06C57C6A8A1D57F69BFD9DEFEEC
          096E20B0F19697096EBE5936B7640F5FDE587E55F79FFC1C73E1D9B59FF827EE
          8FAB431175D23E20E917B2B019D91BDBDE419F6F9A741F8D7F303FF047AF8AFE
          2FF83BFF000505F809E25F0C681E25F12E9B7D7EDE1FD76D74BB296E9C69B78B
          E4493489102DE5C2EF14E4E303C9AFEE6BFE0A27FB346AFF00B5E7EC71F1ABE0
          17864E971F8BF59B2B7974692F6531411DF5BDD4571117700955261DA4807018
          F06BE57C53C3D2C97C40C2E6B51A54AA3A7393ED67C92FC1737CCFA6F0D2BD4C
          E38171396415EA53538A5DEEB9E3F8BB7C8FF3BFFD943F654F8BBFB64FC67F0D
          FC12F837A21D4B5FBD3E75E5ECC185A68B64A4092F2EE400EC89370F7662A8A0
          B3283FE8AFFB127EC5BF093F616F821A27C1DF85D64B757785BAD7F5E9A255BB
          F11EA0570F713119C2FF000A440911A00A327733711FF04F8FD803E14FFC13FF
          00E0CDB7803C171C3E20F1F6A0B1DCF8AFC512C212E35CBB00F03A98EDA3DCCB
          1C40E1412C72EEECDF756A3A8E9FA469F7DAB6AD7D67A5E956B0BDC5CDCDC4AB
          1C56F12296692476202AA804962700024D7C278D3E30D5E21C47D4B04DAC241E
          8BACDFF335DBF957CDEBA2FB6F083C27A790D0FAE631278A9AD5F482FE55E7FC
          CFE4B4D5FF001C7FF073C687A1DBFC6DFD96FC476CB00F125DF85B53B2BB207C
          E6DE1BB478727D375CDCE3F1AFE5FEBF4F3FE0AE5FB6869BFB6D7ED8BE2CF1D7
          83AEA4BAF853E1FB54F0B785642081776703BB3DDED38C09A6966917201F2CC6
          0F20D7E61D7F6CF84F92E232FE1CC261314AD5231BB4F75CCDCACFCD276F91FC
          77E2866F87C7E7F8AC5615DE9CA5A3E8EC946EBC9B57F9853E39248648E68647
          8A5460CACA70548E841EC699457E867C11FA3DFB3AFF00C159FF006F6FD99DB4
          FB3F057C7AF12F8ABC296F851A178ADBFB62C4C63FE59AF9E4CB0A7B432475FB
          E5FB3A7FC1CC9F0F759FB0E8DFB52FC09D77C157AC424BADF83EE05F5A138FBC
          F653B24B12F5FBB24C7DABF8EFA2BF34E28F08387B37BCB15864A6FED43DD97A
          B6AC9FFDBC99FA270DF8AD9F65568E1B10DC17D997BD1F4D76F9347FA72FC0AF
          F82807EC69FB49694FA9FC21FDA23E1B6BF2C70ACF7161757C34FBFB54240DD2
          5A5D79732A8242EEDBB72719E4515FE797FB1CC6927C4DD756444917FB066386
          19FF00978B7A2BF99788FE8E783C3629D2A18997268D5E29BFBD357FB91FD17C
          3FE3EE2F1386552B61E3CDB3B3697DCEFF009B3C1FC2BE3DF1AFC30F1ED878F7
          E1D78AF5FF000478D34CBD373A7EA9A65D3DBDCDA4A18E19244208EE08E84120
          E41C57F587FF0004F4FF008386F47D77FB0FE147EDDD0DAF87B58C25B5AFC42D
          3ADB16B74D9C0FED3B58C7EE58F79E11B3FBD1C6017AFE43F51C8D42F81041F3
          9FAFFBC6A9D7F55F1A78779571061951CC29DE497BB35A4A3E8FB793BA7D8FE6
          4E0EE3ECCF22AFED7033B45EF17AC65EABF5567E67FAC6F86BC4DE1CF19E81A4
          F8ABC21AFE8DE29F0C5FC0B7363A8E9D729716D79137478A54255D4FA8245278
          9BC33E1EF1A78735DF08F8B745D37C47E17D4ED25B0D474FBC844B05EDB48852
          48A446E191958820F506BFCD7BF633FF00828CFED4BFB0CF8823BCF837E3A9AE
          BC132CC25D47C25AC16BAD1F51E72C4C1B818643FF003D6128FD3248E2BFB23F
          D85FFE0B6FFB2A7ED7CBA3F833C63A8C1FB3EFC6E982C5FD87AF5DA8B2D4A623
          A585F90A92127811482390938557C66BF85FC40F01B39C8A4F13864EBD05AF34
          57BD1FF147756EEAEBAB68FED1E05F1B729CE92C3E23F7359E9CB27EECBFC32D
          9DFB3B3EC99FCC57FC15ABFE0953E2DFD84BC7F73F10FE1CD86ADE25FD9675CB
          C3FD95A810D2C9E1AB87248D3AF5FAF1CF95337FAC518277AB67F20BC33E26F1
          07833C47A178BBC27ACEA3E1DF14697770DFE9D7F67298A7B2B98DC3C72C6E39
          565650411D08AFF563F1BF81FC1FF12BC23E22F00F8FFC37A3F8C3C17AB5ABD8
          EA5A66A102CD6F7B038C323A37047EA080460815FC627FC1463FE0813F15BE11
          EBF7DF127F62DD175DF8C1F0A2EEE33278563267D6BC3ACED809103CDE5B0240
          0C3F7A83EF860AD2D7EEFE0FF8F986C7D18E579F4D46B2565397C335DA4DE8A5
          EBA4BD747F8A78AFE07E230556599649172A2DDDC17C507DE2B771F4D63E9AAF
          DE9FF824B7FC14EFC37FB7BFC281E1BF1ADDE95A17ED33E1BB544F116988446B
          ACC030ABA9DA27FCF372409117FD5487180AF193BBFB70FF00C122BF67EFDBBB
          E3A7C2CF8D5F12B5DF1378666D16C24D335DB2D1D52393C536AAFBEDA392E0E4
          C3E5B3CE0BAAB3BA481414D8A47877FC1263FE08F9E17FD8974DD2BE377C6336
          BE2BFDA9AF2CDD7F732EFB2F08432A157B6B620E259CAB15927391C948F0BB9E
          4FDCFAFE66E2DCF70995710D6C5709D69429EA935B2BAB49477BC7F95B49AE9B
          267F4570B6498ACCF21A586E28A4A73D1B4F776D62E5DA5FCC96FD7768F12F81
          7FB377C09FD99FC2507823E047C2DF087C33F0F2A812269B6A166BB23F8EE2E1
          B32CEFFEDC8CCDEF5EDB4515F99E2B1756BD475ABC9CA72D5B6DB6FD5BD59FA2
          E1B0B4A8D354A8C5462B649592F4482BF3F7FE0A53FB247C55FDB43F66BF107C
          1BF84FF1BF52F837AC4EFE7DC402206C7C4B181C58DF4883CE8E063824C648CF
          DF4907CB5FA05457564F9B56C062A9E330ED2A94DA6AE93575E4EE8E5CDB2BA3
          8DC34F0988BF24D34ECDA767E6ACCFF2C6FDA0BF670F8D5FB2D7C46D57E15FC7
          5F00EB5E02F185A92563B94DD0DF459C09ED675CC73C271C48848EA382081E21
          5FEA37FB4EFEC9DF017F6C1F87575F0CBE3DF80F4DF18E86773D95CE3CBBED1E
          7231E7D9DC8F9E193A74F9580C3065C83FC447FC145BFE08B5F1EFF62A9359F8
          8DF0FD753F8DDFB39C65A63ADDA5B66FF408B3F7753B74FBAA3A7DA13319EAC2
          2242D7FA0BE17F8FB97E77CB84C75A8E29E966FDD9BFEEB7B3FEEBD7B391FC2B
          E24781D8EC9B9B1582BD6C32EBF6A2BFBC96EBFBCB4EE91F8B7451457F409F85
          051451401F5A7EC6DFF253F5DFFB00CFFF00A516F451FB1B7FC94FD77FEC033F
          FE945BD15F93F17FFBEBF447EA5C25FEE6BD59FDC07EDB5FF045FF00D90FF6C8
          9756F17C1A1BFC0EF8CB705A46F137866DD112FA53FC57D63C45704F3971E5CA
          7BC9DABF941FDADBFE089FFB6FFECB126A7AE597818FC76F86906E906BDE0E8D
          EEDE28873BAE6C31F688881C9215E3183FBC35FE865457F12F0378EB9EE48A34
          54FDB515F6277765FDD96EBC96A9763FB0B8CFC15C97386EB387B2ACFED434BB
          FEF4767E6F46FB9FE4B524724324914B1BC52AB15656182A475047634CAFF4C0
          FDA5FF00E09B1FB167ED66B7D79F183E067856E3C593824F88B4843A6EAC1FFB
          ED756FB5A523D25DEBED5FCFFF00ED15FF0006CB6AD035FEB1FB2AFC7FB4D421
          F99E1D0BC6F6C62900EA146A16A8558F61BA051EAD5FD57C2DF495C831C9431B
          CD879FF795E3F2947FF6E513F997897E8F19E609B9E12D5E1FDDD25F38BFD1B3
          F307F622FF0082D3FED7DFB20FF63783B52D65BE3DFC1D84A44BE1CF125C4924
          F67167EE58DF7CD2C1C701184910ED18EB5FDF17C24F1BEB1F12BE18F813E206
          BFE04F117C31D6359D2EDF519FC3FABB466F749691037933F964A87008C8E08E
          84290547F28FFF0004AFFF0082207C66F017ED4D73F13FF6D1F87FA7687E0FF0
          3BC17FE1ED3C5FDB5F5B789F552C4C3366277CDBDBECF34AB852D2184105438A
          FEBF2BF9D3E90B9BF0FE233084326841CEDCD3A907EEC9BD969EEB7D652B5EED
          2BDD33F7EF0232ACF6860272CDE7250BDA109AD636DDEBEF25D12DACAF6D5051
          4515FCF27EF0145145001451450067EA7AB695A2DA8BED6752B0D26C8CB14026
          B9996243248EB1C69B9881B99DD114752CC00C922AE4B1457114B04F147340EA
          51D1D415752304107A83E95E5DF1CFE117867E3E7C1CF899F05FC63196F0E789
          B45BAD1EE5D465EDFCD8CAACD1FA491B6D914F66453DABF994FD803FE0A2FF00
          B5E7EC9BFB472FEC17FB7AE85E3AF1A7852D3516F0F695E2AB8D36E6EAFF0048
          903ECB795EE154B5E69D28DA44CDB9D15D5B79452A3EE786B81EB66D82AF88C1
          4D3AD43DE74DE8E50FE687769DEEBD2D76EC7C5F10F1952CAF194686320D52AD
          A29AD529FF002CBB26B67EB7B2573D1BFE0AF5FF000466FD9DDBE157C5CFDAF7
          E065CE9FF027C53E1ED32EBC41AEE8505B6746D756352CC20853FE3CEE18F036
          0F29988051493257F1A35FE953FF000552F0F6AFE28FF8276FED77A568704F73
          A80F06DDDE6C8D49668A02B3CB803AFEEE27AFF356AFED2FA3471263730C9AAC
          71B55D474A7CB1BEAD479534AFBBD6F6BDF6B6C7F217D22387B0780CDA9CB074
          9535521CD2B689CB99ADB65A5AF6F5DC28A28AFE8D3F003EBAFD8BEDAE2EBE28
          EBD1DB412DC483409D8AA0C903ED16FCFEB45761FF0004FAB3B9BDF8CDE268AD
          6169A41E18B96207A7DAED7FC4515F8AF1CE3BD9E3DC74D91FB0F05E0F9F02A5
          AEECF5ED07FE0AB7FF00050AFD9FBC7DE2ED17C1BFB4E78F756D16C758BCB78F
          4FF1118F5AB711ACEE0228BC5959178E88CB8ED5FA0DF0B7FE0E61FDA87C3C96
          D6DF167E077C1DF8976E84079F4D96EB47B9947AB3169E3CFD2302B89FDAA3FE
          0DFAFDB9F48F1E78FBC6FF000A23F86DF1ABC3BA8EAB79A9DBDB69DAB8B1D422
          8E599E40924378238F700C07C92B66BF27BE227EC11FB6B7C289664F1F7ECB1F
          1D74385090D72BE1BBAB8B6E3D2E2147888F70D5CF86CB78133FA51972D09CDA
          57B3509FCECE32FBCDF1198F1AE475251E6AD0826ED74E50F95D4A3F71FD4EFC
          3CFF008399FF00660D64DBC5F137E027C6BF01CCDF7DF4B9ACF568633EECD25B
          B91F44AFBF7E077FC1693FE09F9F1FFC67E11F871E0BF8A3E28B0F1FEBB7D069
          BA5E93A8F85F508E5BABA9582244248E27881248E4B851D490066BFCF3752F0A
          78A34595E1D63C37AFE93329C325CD9C9132FD43018AFE853FE0DC9FD9826F88
          3FB5478D3F685F12E8B39F0FFC3FD17669924F0908DABDF87863652C30DB2DD2
          F09C720BC678E2BF3EF11BC0EE14CBB29AF9A439E1ECE2DA519DD393D22BDE52
          7AC9A5B9F75C01E33F136619A50CB67C93E7959B70B3515AC9FBAE2B449BD8FE
          DD68A28AFE1A3FB3828A28A0028A28A00686562C15958838383D0D3ABE32FD8B
          FE322FC65D33F694B96BD1793F873E3178B3C26DF367CB4B4B9558C7B0F2DA33
          F8D7D9B5DF99E5F3C2D7961EA7C51FF8738B2EC7C3134235E9FC320A28A2B80E
          D2B5E59DA6A36975A7EA16B6F7D613C6D0CF0CC81D268D8619594F0548241078
          20D7F9B77FC150FF00636BBFD88FF6BDF883F0BEC2CAE22F86BA8B7FC243E0E9
          DB2449A4DC3B148B71EAD03ACB6E73C9F28374615FE9355F885FF05DEFD8B4FE
          D3DFB235EFC4FF00086922F7E2CFC34F3FC4165E52665BED24A8FB7DB0EE7091
          A5C28EA5ADF68E5CD7EE7E0071DFF636771A35A56A188B425D93FB12F93767D9
          49B3F17F1CB827FB5B26956A2AF5A85E51EED7DA8FCD6ABCD247F029451457FA
          4A7F9EE7E97FFC12B3436D7FF684F18D9AADCB15F065DCBFBA5C9E2FAC87E5F3
          515EE5FF00042FF0C7FC257FB5A7C44B0312CAB1FC3ABF9B952707FB4F4D1D88
          FEF1A2BF923C62E228E1B3A9526FECC4FEA5F09B209623278D44BED4BF33FD01
          E8AFE53BF6EDFF0082F4FED33FB2E7ED43F1AFF679F087C16F8277B65E19D57E
          C569A8EABF6E9A5B985A18E58E4748E78D4315954E0715F973F107FE0E05FF00
          829078DA1B9B7D17C73F0E7E1843202BFF00120F0C405D07FB2F79F68607DC1C
          D7E2D917D1CF88B1F469E221ECE109A524E53E8D5D7C2A4F667EBF9D78FD9060
          AB4E84B9E5383716947AA767F134B73FBEFB98AD248D9EF23B77894124C8A085
          1DC9CF6AABA45F68FA969F05FE8379A66A1A5CB9314D67223C5260953B59320E
          08238EE2BFCC03E2EFED97FB57FC7A1710FC60FDA27E2FF8F74F973BEC6F75D9
          FEC5CF616AAC2151EC1457FA3D7EC63F0FEDFE15FEC8FF00B33FC3CB7805B1D2
          7C0BA25ACCA06333FD8E232B1F7321763EE4D79FE26F83F538630946AE2710AA
          54AB26B9629A492576EEDDDEEBECA3BBC39F15E9F11E2AB52C3D07085349F336
          9B6DBD1592D367D59F4BD14515F8B9FAF05145140051451401FCBAFF00C11DBF
          69FB4F0AFF00C142FF00E0A1FF00B2778AB5016A7C51F10BC47E28F0EACCD8F3
          350B6D42E52EA1507AC925BF95263FBB68F5FD4557F9D3FF00C144A4F881FB21
          FF00C1573E3D78E3C05A8DD7853C69A5F8EFFE136D0EF11785377B2FD0E3A3C6
          7ED0C8CA7861B94E4122BFA03FD94FFE0E43F80BE3FF00ECEF0E7ED57E00D5FE
          077889B6C6FAEE8EB26A7A34AD9C1678941B9B71CF40B301CE5857F53F8ABE13
          63F308D0CFF26A4EAD3AD4A9B928EB24D452BA5BB4D5B6BBBA77DCFE68F0C7C5
          0C1605D6C8F37A8A9CE9549A8B9689AE67A37B269DF7B2B35D8FE9568AF31F85
          1F1A7E11FC75F0BC1E35F837F123C17F137C2D26317BA2EA115D246C467649B0
          931BFAA300C3B8AF4EAFE5EAF87A94A6E9D58B8C96E9AB35EA99FD2542BC2AC1
          54A6D4A2F66B54FE6151CB1457114B04F147340EA51D1D415752304107A83E95
          251589A9FE713FF0564FD8B2E3F627FDAFBC6DE0ED174C96D3E12F8859BC49E0
          E942FEED6C66725ED01E99B797CC8719CEC5898FDF15F99B5FE849FF0005B1FD
          8B87ED71FB1D788B5AF0BE926FFE2FF8004DE28F0F796999AEE054FF004DB25E
          E7CC8537AA8E5A58211DEBFCF6EBFD38F0478F3FB772484EABBD7A5EE4FBB696
          92FF00B796BEB7EC7F9CBE31F047F62673385256A357DF87649EF1FF00B75FE1
          63FA32FF00836A3C3706B1FB5CFC71D46E63DF05B7C389A1E9D1A4D4EC48FF00
          D1468AF70FF835FF00C36F3FC41FDAEBC5E623E5DAE8DA169AAF8EF34F752119
          FF00B765A2BF8FFE9178E94B8AEBC22FE18C17FE4A9FEA7F577803838C78668C
          A4BE294DFF00E4CD7E87C09FF05FDF039F087FC149FE24EAEB00820F11E83A1E
          B91E070F8B45B466FF00BEEC9EBF1EFC2BE0FF0016F8EB5AB4F0DF823C2DE23F
          19788A73B60B0D2AC65BBB998FA24512B331FA0AFF004C0F8EDFB00FEC89FB4D
          FC4DD03E2F7C7AF82FA1FC4DF1C697A5268D6536A17573E44768B34932A3DB24
          8B149879A539756386C74AF7BF873F07FE10FC18D18E8BF0A3E19FC3EF85FA1A
          A00D0685A45BD84454777112A83D3A9AFD1F21FA4CE1B2DC9B0D81A586954AD4
          A118B6DA8C7DD5656B7337A25D11F9FE77F475C46619BE231B53111A74AA4E52
          4927296AEEEF7E54B5F367F0B5FB307FC103FF006E7F8F173A6EABF113C39A5F
          ECDFE0591834977E287CEA0F1F19F2B4D889943F3F766308F7AFEF834AD3E2D2
          74BD374A831E45B5BC76E9C63E5450A38FC2BF00FF00E0A1BFF05E8F827FB394
          3AF7C31FD9864D0FE3C7C6D4F32DA5D4A390C9A0787E60704C93211F6C954FFC
          B385B6020EE901050FEF0F817C40BE2DF04F83BC548E92AEA7A55A6A01946030
          96157C8F6F9ABF30F17B3FE24CD68E1B30CEE8AA34A5CFECE2959FD9BB69B72D
          74B37BDAE95B7FD1BC2AC9387F2CAD88C0E4F55D5AB1E5F6926EEBED5926AD1D
          35BDB6BD9BB9D5514515F879FB305145140051451401FCA4FF00C1C81FB14EB5
          AFD97817F6DBF0168D36A11695689E19F1BA5BC64B416BE616B3BE703F855E59
          20763D37DBF6048FE436BFD63FC45E1DD07C5DA06B5E15F14E8FA6F887C35A95
          ACB637F61790ACD05E5BC8A51E29636043232B1041E0835FC8DFEDD3FF0006E7
          78C6DBC45ADFC41FD8675BD2359F0C5CC8D707C0BAEDF7D9EEB4F639263B1BD9
          3F773479E152764651806490F35FD9FE03F8DD82C3E0A392E713F66E1A426FE1
          71FE593E8D746F4B69A5B5FE45F1B3C1CC657C64B38CA61CFCFACE0BE24FF9A2
          BAA7D52D6FAEB7D3F9A8F839F1B7E2B7C00F1CE8DF11FE0F78EBC49E02F16D8C
          F1CF1DCE9D772422708C1BCA9954812C471868DB2AC0904106BFD307F640FDA4
          7C31FB5C7ECDDF09FF00681F0A882DEDBC41A5A4D7B668FBBFB37504263BAB52
          7AFEEE6495013D4056E8457F997FC58F849F127E05FC40F11FC2BF8B9E0FD63C
          07F107499561D434BBE4025B72C81D4E54956565756575255958104839AFE9AB
          FE0DA6FDAA27D3FC51F183F63DF11EA2C74ED4203E33F0CA48DC47751EC86F61
          4CF778CDB4A1474F2253DCD7D9FD2378368E67922CE30A94AA51B4AEACF9A9CA
          D7D56E96924FB276DCF91F0038B6B65D9C3CA712DA856BC6CF4E59ADB47B37AC
          5AEF6BEC7F5F35F04FEDD1E26FDAC3E15699F0BFE367EC9FE0ED43E336A9A46B
          1FD9DE2AF87AAE02789B46B90034D0B9E61BAB79238CA4ABC04965DEAEA36D7C
          E3FF000537F8E3FB547EC34BA0FED8FF00043CAF8A5F04A17B7D27E23F80F562
          CD6F6D1B36CB7D52C675064B472CE20971BA325A063131DED5EB1FB10FFC156B
          F64FFDB96D6C745F0478AFFE102F8BAD1EEB8F0678824482FCB0196368F9F2EE
          D07273112E1465913A57F1FE59C2B8FC3E169E7D468AC46195D496AD45DAD28D
          44AD28E8EEA4B4D549493DBFAB331E26C1623133C92AD574311A38EC9BD6F194
          1BBA96AACE2F5D1A69A3EB4F80BF18BC55F18BC2E757F19FC05F8B3F00B5E8D5
          44FA578A52D0B331CE7C996DA795644E3AB046E465457F9E57FC1503E197C1AF
          845FB747ED05E0BF80DE27D1FC47F0F63D65EE521B1198744BB94092E74E56FB
          AC2099A48C6D24280109DCAC07F52BFF0005B0FF0082AF43FB2F785753FD983E
          00788236FDA2F5BB3DBACEA96B265BC15A7CA9905587DDBE951BF763AC487CCE
          09889FE1CA59649A49269A47966762CEEC72589EA49EE6BFA9FE8D9C158CC3FB
          5CF2A2F6346B2B429EAEEAF75377BBB2D546EEED36F6B5FF009A7E909C6184AF
          ECB26A6FDAD5A2EF2A9A2B3B5B955ACAEF796964D25BDEDFDA1FFC1B23E07974
          CFD9BFF68AF88B240D1A6B1E34B7D2A3723FD62D9D9249C7B037EC3F3A2BEF9F
          F82207C2897E14FF00C1373E03ADE5B9B6D57C462FBC59720AE37ADD5CB981BF
          1B78ED8E68AFE5BF16F3458CE25C6D78BBAE7715E91F77F43FA53C2DCB5E1387
          B07465A3E44FFF0002F7BF53EEFF00DA87E374FF00B36FECFBF163E3C43E06D6
          3E248F0AE912EB12E8D613A4135DC31906422470422A217918E090A8D80C700F
          F069FB6CFF00C1647F6BEFDB3E2D53C2577E2187E0DFC1BB8CC6DE15F0CCAF12
          DE447F86FAECE25BAE9CA7C911FF009E60F35FE863AE689A4F89745D63C39AFE
          9F6DAB685A85ACB657B6B32EE8EE60910A3C6E3BAB2B3023D0D7F99A7EDF7FB2
          6EBFFB15FED51F13FE056AB0DEBE8169766FFC377B30FF00909E8D312D6B306E
          8CC1731391C09229076AFDABE8BD84C9B138AAD4F174632C542D28396BEEECEC
          9E89C5D9DED7D77D0FC7FE9238ACDB0F86A33C2D59470D3BC66969EF6EAED6AD
          35756BDB4DB53E36AFF4C6FF008269FC50B7F8C3FB04FECA1E3886E16EA76F06
          5869774E0E7375649F629B3EFE65B495FC11FEC61FF04E8FDA83F6E8F12C3A77
          C1EF044F67E088E758B53F176ACAF6FA3E983386CCF8266907FCF1883BF4C803
          E61FDFCFEC1FFB2168FF00B0DFECDBE10FD9F346F1BEBDF1063D3E7B9BEB9D4A
          FA358849733BF99288215CF9506F2C550B391B892C49AFABFA53E779656C1D1C
          146AA78A84EFCAB56A2D34EF6D9DF96C9EAFB1F31F469C9B31A58BAD8C9526B0
          D385B99E979269AB77D2F76B4F33EC5A28A2BF894FEC50A28A2800A28A2800A2
          8A2803F0DFFE0B49FF0004C5B7FDB3FE15B7C64F847A1C27F69BF095939B48E1
          501FC59A62E5DB4F73DE65259E027F88B467890327F189FB1D7ED19AEFEC6BFB
          527C2BF8FB6BA15F6AB79E17D5246D4349F3CDAC97B6CF1C905CDB172ADB19A3
          9645E54E1B191C57FA81D7F203FF0005EFFF00825E8F0DDFEB9FB757C05F0F30
          D06F26127C45D1ECE2E2CAE1CE06AF1A2F48E46204E07DD7225E43C8CBFD63E0
          1F89B4A74DF0AE70EF46AA71836FF9B474DBED2BFBBD9E9D55BF983C6FF0EAAC
          2A2E26CA55AB526A534BFBBAA9A5DE36F7BBAD7A3BFACF8FBFE0E40FD97FE257
          803C51E00F19FEC89F137C51E1CD6F4E9F4BD574BBBD5ACFECF756D32149232E
          016C1562321411D4608AFE48355D4F4DB1F17EA5ACF801BC41E1FD222D464B9D
          18CF740DED942242D0EF9A30A0CCABB32EA17E6190074AE6E8AFEAEE0DF0EB2A
          C8635239641C554B5D394A4B4F26DA5FAF53F9878B78FB33CEDD3966325270BD
          9A8C62F5F34976FF00236BC47E24F1178C75ED5BC53E2DD7B59F14789AFE76B9
          BED4751BA7B8B9BC998E5A49657259D8F724935D77C1DF85FE24F8D9F15FE1BF
          C20F0840D71E27F136B767A1D900A48596799630ED8E8ABBB713D8293DABCDEB
          FA75FF0083727F62BBBF1A7C54F147EDA3E35D21D7C25E1559B43F0919A3F96F
          3589A3DB717099EAB041218F3D37DCF07319C6DC79C534722C9EB6612B2E48DA
          2BBC9E915F7DBD15DF432E09E1AAB9D66D4B031BBE795E4FB456B27F77DEEC8F
          EC0BE1E781F43F865E00F03FC37F0C41F66F0DF87F48B3D174F8F1F72DEDE158
          A31FF7CA2D15D8D15FE4ED5AB29C9CE6EEDEACFF004FE9D38C22A11564B4415F
          1F7ED27FB077ECB9FB5CF8C7E17F8E3E3FFC33B1F1EEB1E1269FFB356599E28A
          E63976930DDAA106784328711B1DA1B77043B06FB068AEBCBB33C4612AAAF85A
          8E1357578B69EAACF55AEA9D8E6C7E5D87C5527471305383B69249AD1DD68FB3
          573CB7C55E29F843FB377C28D4FC4FE25BEF07FC22F83FE19D3CC92BAC51D9D8
          E976C9C048E28C003248558D172CCC15412403F857FB07FF00C160F56FDB6BFE
          0A4DE36F859A5D9CFE14FD9EE7F085F43E0BD32E1145D5F5F5B4F14AD7B74464
          896583ED04440ED8D2351CB6E66FA4BFE0B25FF04F5F8B1FB767C19D03FE14E7
          C49D6B4DF18F85DE6BFB7F075CDE08B47F14B11FC7D025E200C2295C941BD94E
          C0E645FE3BBF614F14F8BFF641FF00828BFECF97BF11743D73C03E21D07C6F6D
          A1F886C35181ADEE34F82E98D9DC89636C1188AE5DB9E08C11C106BFA3FC2CF0
          EF28CD787F1B8B75155C6B84ED17BD36B58BB3D5B934BDED95EDBDCFE7DF12F8
          FB34CB33DC1E155374B06A71BC96D35A26B4D94537EEEEED7DAC7FA52D14515F
          CC47F4705145140051451400514514005676B1A3E93E21D2355D035ED36C759D
          0EFADA5B3BDB3BA896586EE0914A3C522302191958A952304120D68D14E3269D
          D6E294535667F9ED7FC15F7FE09A9AAFEC1FF1A3FE126F02D8DEDF7ECD7E2CBA
          967F0DDD1DCFFD8971CBC9A5CEE73F320CB44CC732443AB347263F1F2BFD4D3F
          693FD9DBE197ED57F05FC6FF00033E2DE8CBABF83F5BB53133A8027D3EE07315
          D5BB90764D1385756E9C6082A483FC39F847FE085DFB6378A3F6BAF187ECDB3E
          8C341F01685731CF7BF112EAD9D7489B4A90930DC5B7399EE1D01FF46462C8E1
          95D90297AFF403C1EF1C7098DCAE54B3AAAA15B0F1BB949FC715A2979CB64D2D
          5BB35BD97F0C78B1E0CE2B099946A65149CE8D776514BE096EE3E51DDA7B2574
          F6BBF87FF619FD8A7E2A7EDD7F1D342F83FF000E2CE6B3D25592EFC49AFC9096
          B5F0EE9C1B0F3CA7805CF2B1C59064720700332FFA42FC08F825F0FBF671F843
          E01F823F0B3485D17C0DE1DD3D2C2CA238324B8C979A56006F9A476791DF1F33
          BB1EF5E5DFB1E7EC6DF04FF622F845A6FC23F82FA00B4B61B67D5F57B90ADA87
          882F31837377280373750A83091AFCAA00AFAB2BF9A3C65F16AA71262D52A09C
          70B4DFBA9EF27FCD2F3ECBA2F36CFE88F093C2EA7C3D86752B352C4D45EF35B2
          5FCABCBBBEAFC920A28A2BF153F600A28A2800AFCE8FDBC7FE0997FB3CFEDE3A
          025DF8C74E7F027C66B1882E89E38D22255D42C997948EE0702EADC373E5B9CA
          F3B1E3249A28AF5326CEB1797E2238BC15474EA4766BFAD53EA9E8FA9E6E6D93
          E171F42585C6414E9CB74FFAD1AE8D6ABA1F7D785AD75CB1F0C7872CBC4F7F69
          AAF8961B0B78B51BAB742915CDCAC6A249114E485670C403C806B768A2BCD9CB
          99B7DCF4211B24828A28A92828A28A0028A28A0028A28A0028A28A0028A28A00
          28A28A00FFD9}
        Properties.Caption = 'teamliquid.net'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 2
        OnClick = teamliquidlogoClick
        Height = 161
        Width = 161
      end
      object kongregatelogo: TcxImage
        Left = 56
        Top = 217
        Cursor = crHandPoint
        Hint = 'kongregate.com'
        Anchors = [akLeft, akBottom]
        ParentShowHint = False
        Picture.Data = {
          0A544A504547496D61676597320000FFD8FFE000104A46494600010100000100
          010000FFDB004300010101010101010101010101010202030202020202040303
          0203050405050504040405060706050507060404060906070808080808050609
          0A09080A07080808FFDB00430101010102020204020204080504050808080808
          0808080808080808080808080808080808080808080808080808080808080808
          08080808080808080808080808FFC000110800A4009603012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EA3F
          E0993F077F65EFF8283EB5FF00051F87E34FC65FF82850F8CFF083C79E23D4FC
          4ADA2FC57D4F4DD26E3499F57D50D8C3630C7718568E1D3A45604201F2E091C0
          E57E017C36FD822D7F604F8B3FF050EFDAFBE2D7FC1517E0AFC0C93C5DA8C3F0
          E1753F8C7AA45A878D74879CAD85BD8D9457264965F9591A570A8C55E4DDB016
          AFA53FE0DDFF00D97FE37E83E2DFF82E17C699FC16E3E1FF00C4BF146AFA0F83
          3503776FB75AD42C753F10C3731042E5A2D925D403322A83BBB8CD765F193F61
          1F8E5FF05CEFF8248F85343F8F5F066D3F679FF82817C19D4758F0CF86A686F6
          D5744D7350B2B85B3BD8961B597C8862B8FB108882A0413C5BA326262193925B
          85D1F999FB20FEC77F0EF58FD93FE37FFC15A7F6DBFDBA3F6FEF857FF04FAFED
          DBD1F0CBC1DA7F8FB523AEEB1A67DBDED6DCDD5C89DD9A692502148D00C905DA
          40326BBEF05FECA7FB34FF00C1577F65DF8F5F10BFE08F5FB707FC146BE1EFED
          1FF0EA08EF6EFC0DE3FF00885A84C35A5916468503B5C11189961B98D2559085
          74C4880306AF67F097C08F177FC1493FE083D7FF00F048EF0C5EF86FC01FF051
          4FD9E35E86C7C41F0F6FB55B747B9BAB1D42E76AFDA118C4D1CD6F732013AB34
          62E176B300558A7FC111BF63EF895FF0404F83DFB6A7EDDDFF0005343E1DF80B
          65A968565A27873C2D26BB67797DACBC324B3154FB2CB2A19A6904091C60B380
          CECC100E4E65DC2EBB9CB7FC10FF00F65FFD94BFE0A57FB1C788BC4FF14BF68D
          FF0082887823F684F065F5B7857C6BAC4FF18754B3D3E6D66FEE275B23656FF6
          8653C0B68B6305CC98E3BD707FB287ECC5F063E16FC33FF8292782FF00E0A31F
          17BFE0A4FACFED15FB3149FDB9E2FBDF0EFC58D56CAC7C47E1EBC9246D366D3A
          217582EF041BC862BFEB40C92081E6BFF04E9FD947F6E6D7BFE0845FF0530F8C
          7F0A3E1BEA3A17C42F8A3E3BF08FC53F8657565AAD9A49790693E2182EEF2E60
          265FDD1B7FB1DCB0594297F2B0AAC5803FAD9F15BF698F82DFF050EFF820C7ED
          C1FF00050FF0B695A7E85FB44F887E083F80BE265A5AB736DA86973CACB14AA0
          00413793CB138CE61B855CE4114EEBB85D773F1BFF00E09CDFB23E93E31FD8B3
          E347FC159BFE0A2FFB76FEDC7F0F3F624B2D5EF6D7C0BE1CD17C7BA9C7AAEBD6
          D1DFBD9C724B3A4E5DA47B8DB6C9146A32E92B975415E97F0EEEBFE0915FB5AF
          C08FDADBE27FECCDFB747FC1487E17FC4FF01F80354D5F4FF06FC40F8B7A8589
          D56F16091AD6F2D65370C2E70F1B426049092645CA6082DDE7EC6161E1EFF82C
          8FFC1B79FF000EDDF819E31F0AE89FB657C2EB98AEE1F0CDF5D2DB7F6A2C1ABC
          F756F20672A3CA9AD6E6587CDC9549D72E543027D83F60DFF826E7ECC1FB11FF
          00C13AFE217C44FF0082D6FF00C1397F670F85DAA7C3CB7BC6B3F17EB3E258B5
          8D6FE21CD35EDDCC919B6B591A2899164B3B38635919A4DB960809C975DC34EE
          78FF00FC12EBE16FEC49FB587FC130BE29FED93F16BE307FC14DAEBC6BF08B49
          91FE243587C62D56D5758BF86D4DCC8DA6C22E8A88CC7E5E036C39E33815E1FF
          00F050CFD98BE1A59FFC128BE1BFFC15A3F603FDB07FE0A17E0FF86377AF4365
          A87863C75F1175196EAE6CDF537D38987336639127B72CA773AC91B86E302BF4
          83FE0DDDF80BFB64FC1BFF0082447EDB7F147E187C28D23C37F12BE265DDD78D
          7E0DD8DC4D657B69A9AB5884B6CC6F29511095366DB809909C8E6BC6FF00E0AB
          FE14FDA9FF00E0B57FF048DFD98FE3EFECDD7774DE22F87DA8EB363F1A7E16D8
          DFD9D9DA5A6ADA7AB477575891D149B57B59A448C33078AF119412A0D36ACAEC
          57FEB7FCAE747F1B3E1BFF00C12A7E04FF00C13B7E02FF00C149FC51F10BFE0A
          CDA97C18F88977059E93A659FC68D51B53B67905CED33C66E8201FE88E0E1CFD
          F1D6BE00FDA07F667F0FFED6FF00B507FC1377E067FC123BF6E1FDA7ED2D3E2A
          F86B56F1178EA4D6FE2E6A1AFDD7816D605B79B76A10477798A58E27997C90C0
          BC85541182C3FA0DD3FE117FC158FF0064CFF821F7EC41F03BF63BF81DE0DD6F
          F6CFF0BC76BA5F89BC35E205D2AFA0B1B12F78F2307B89D602C0BDBFCCAEC70C
          47738FC40FD913E02C3FF06F9FFC14EBF62CF8E5FB6DFC63D1BCCFDA17C1FE25
          1E3412E811E9F6FF000D35699EDE5F2649E3BAB94B8885CCC9134CA224453B88
          2AA712A4877474BFB48EAFFF00044AFD90FE396A1FB127C59FDBABFE0ABDE22F
          8BBA4CD0687E28F883A57C48D4E4D3740D424452ED2C4B3047F2B77EF1638A40
          B86524B035F955FF000565F10F837F621FF828A7C2CF85BF06BF6D1FDAE7E2AF
          EC8EBA1787358F12DDE97F172FB52BCD4E3959BED9E45CC77012395D10909C6C
          246057EBDFC4BFF82117ED556BFF00059BF1B7ED4FA5FEC8FF0007FF006F7FD8
          B7E20F882FBC481B5BF19DA699A65AC5A8C7B9A6BA01DAE1DAD6599E48FCA8DF
          CE08A0119E39BFDB0BFE09CBFB187ED7FF00F0584FD967F635FF00826D7ECF3F
          0A343F00FC28B987C41FB41EA7E189D23B3B7B796F2D185ACAD2CB9B87852028
          CB0EE2AF77B1B050E0E65DC2E8FD2EF8FF00FF0004EEFD813E07FECA1F197F69
          3BBF8AFF00F053AD575EF04782F4CF1A7883C2169F1B3587D6346B5BF8F74026
          469FCBDC8048CCA09E217F4CD7E667FC12E3E03FECD9F18FF62DFF00827C7C4E
          FDAD7E3CFF00C1447C49F1B3E3AFC46F10FC3ED36F7C37F17B55B5B2D3E7B4B9
          BA313DCC3F681B23F26D40257712C41EF5FD007C1AF1778E7F691FF82907FC14
          CFF66AF899FF0004F4D3BE16FC3BD77C2163E1AF177C4F8FC67F6DBAF1269A6D
          EE60D196E34D3218A11240FA8BA794014C0127CCE00FE3C7FE0925FF0004BFFD
          BC7E04FF00C16FBE0E7C1AF1A7C3BD4EE2D3E0B788ED3C5BE2A8C6BD68F6BA56
          8972B2A41A845179D86136F56091AF9837FCC053BAEE1747ECBFEDB9FB2B7EC4
          FF0007FC07FF00053CF0EFC2CF8DBFF052FD3BE337ECE1A478475AD72F2FFE30
          EAD3D96A316AED0CE82CD7ED1FBC75B6F39087D8119948CD59FDAC3E1BFF00C1
          2ABF646FD8CBF65EFDB83E227C42FF0082B26B7F0C7E2B2DBBE83A7E95F1A754
          7BEB213DA1B95FB42BDDAA8CA020ED63C9C57E327FC1D17FB2EFED3BE16FF82A
          B7C42F8B12785F5BD23E12FC67B8D0F46F065D45AAC0B178AAE6C747D2ED6689
          E059772F973CCAB9955465B22BFABAF8DBE03FF82B9FECF1FF000498FF00827D
          7C16FD83FE097823C61FB4C683A169BE1EF1DE87AFA695769A55BC7A7346FE5B
          DD4F1C05C4A146E473C134D6BB12A49EC7E39F84B5BF813F0EFF006FAF85FA7F
          EC41FB597C79F8A7F08BC4BFB3DDD78AF59D3F5EF8A779E249346D5A4D674E55
          8670677582E12170ACBD725BDF257CC3FB3CFF00C12BFC51FF0004B2FF008282
          784FC0BE39F8A117C42F18F8E3E00DD78C754B51A2A69E3C3976FAD69F1CB601
          92EAE56E7CB7461E729556E30BCD154A9C9EA95FEE3654DB57479DFEC65FF04F
          6F1DFEDFDFB59FED49F0ABE1EFC73F1E7C28BC8BC77E34D665117886FEDAC76C
          7ADCE8C161B775018EF52481CE3AD7EB4DAFFC1ABFFB47E9A2E62D2FF6D2D76C
          2192792E2410F893588C4B2BB16791809065D892CC4F2493C9ACEFF83773FE52
          4BFB5D7FD86BC7DFFA903D7F7208063AFEB5F98F0E65DF5DF6F5311527755669
          5A72564ADA2B347F5EF8B5C66F86EA65B83CB3098751960F0F36E5429CE4E538
          B726E528B776FCCFE15B4BFF0083497E2D689E331F11745FDA86CB44F880276B
          95D76D354D4E3D41663C1905CAB09771F5DD9F735A9F123FE0D44F8F3F196F2C
          351F8BDFB5C49F14750B6468EDE6F11EBBAB6A8F6CA4F211AE19980381C022BF
          B972A0FAFE749B07A9AFA4FF0054F0FF00F3F2A7FE0C9FF99F942F1DF34FFA06
          C2FF00E12D1FFE44FE1B749FF8351FE3DE85A0C7E14D17F6C0BCD23C2E913C31
          E9D69AE6AD0DB2237DE410AC9B369C9C8C639E86B2743FF834ABE30786BC2DE2
          0F047873F6A4B4F0DF83B58FF90B69361AA6A70D96A581806E205709376FBE0F
          41F87F751B07A9A360F5347FAA787FF9F953FF00064FFCC7FF0011DB34FF00A0
          5C2FFE12D1FF00E44FE0FBC2DFF068378FFC0DAF69DE29F05FED17E1EF087896
          D1FCCB5D474ABBD42D6EAD9BFBD1CB1B2B29F7045753F137FE0D4AF8F3F175EC
          F52F8BFF00B5C5D7C51BAB28DFECF278875FD57537814F5119B8662A0E3B115F
          DCBB20009E6A96A18FECFBBFFAE4DFC8D454E15A0A2DAA953FF064FF00CCAA5E
          3AE67CCA3F55C2EFFF0040B47FF913FC9126F83EFF000F6E6EBC0DA1FC4EF8D7
          A2695A34F369F05B69FE31BF86DE109232911C4B22AAAE727000EA7AD6C7C07F
          D9274AF883F117C2DF05BC11E3AF89BE0A6F196B70E993887C4F7B1DACB3DC91
          119278E275F373B8E4B0248E3A57A7FC4AFF00928BF107FEC377DFFA3DEBDE3F
          616C7FC364FECCB9C7FC8F1A3FFE94A57F1565FC779CD4CC618696267CAE697C
          4D68DA5BAB33FE8E389BE8DFE1F61F846BE694B25C32AD1C3CAA27ECA3A4953E
          64F6EE7EB8C3FF0006B8FED40D103FF0DC1E2A5270707C53AD1FD7CDAE2BC5DF
          F0690FC58F885369F3F8FBF69FD3BC6D25A865B77D5F52D4EF5ADD49058279AE
          DB41C0E98F7CD7F74D0602A0E9C0EFED567E5FEF7EB5FDAB0E15C3B5FC4A9FF8
          327FE67FCE24BC75CCD3B2C2E16DFF0060B47FF913F88AD13FE0D70FDA83C35E
          0B6F871E1CFDB83C53E1EF87C63788E8361E29D6A0D38A31CB29B55944783DC6
          DC7B579FF84BFE0D1CF8A9E01BCBDD47C0DFB4D69BE0CBFB98C453CFA46A5A95
          9C93A86DDB6478994B0CF383919EC3AD7F769B07A9A3E55E326B45C2B417FCBC
          A9FF008327FE62978E999BDF0B85FF00C25A3FFC89FC3B5A7FC1AB1FB47DA6A5
          A86B107ED9DAC41AADE244979751F88F58596E4461822C8E24DD2050C40C9E32
          70066AB5BFFC1A8FF1EECF5CD4BC5165FB5F5E59F89AF22582EF508F5ED596EA
          E234E515E60E19941E406C81CE39AFEE4BE56C0C9A360F534FFD55A1FF003F2A
          7FE0C9FF009847C74CCD2B2C2E17FF000968FF00F227F0BBE27FF834C7E33F8D
          E5D26E7C69FB56C7E30B9B073258B6A9AC6A9746CD8907744F23318CE4039503
          A0AE9A6FF835C3F69E8A29E56FDB93C5521084B7FC553ADA9C01ED37B57F6F9B
          07A9AA17C316D7639FF56DFC8D43E16A315CD1A9515BFE9E4BF5611F1C7326D2
          96170AEFA7FBAD1EBA7F21FE623FB0BF80E6F87BFB7E78AF44D4FC55E30F186A
          767F0EBC41A5CB75ACEAD3EA0E7C8D6F4B4FDDBCC4B2A1249DA303DB3457A17E
          CCE777FC14ABE282B1000F08F8B4FF00E5C1A6515E5F8799857AB94529D59C9B
          F7B56DBDA4D1F77F4AFE1ACB303C778CC36068469534A93518AB455E8D36EC96
          8B56D9FA4DFF0006EF171FF0525FDAF1DD0CA7FB6FC7A73FF730BF7E9C6315FD
          C18988703041C7A77AFF002F6F81DFB4E7C71FD93FE3F7ED29E3EF803E386F00
          F8B67F88BE34D3E5BC1A7DADD97B77D6EE199365CC5220E541CE335FA05F0D7F
          E0B1DFF0520D7FE24780B45D5BF690B9BAD36F759B2B2B98FF00E117D114BC52
          4C1586459823827915F9BE57E29E5D95E2EBE5F888C9CDD69F4BAD5AB753FACF
          8E7E833C63C679465BC559554A31C32C0D0D2729737B90BBD395ADB6D4FF0041
          64FBE0E1718A9AB3AC09304059892501E7DC568D7F41C67CCAE7F950E1CADA0A
          AEEEBB883CFB62AC5636ACCD1D9DECA8C43AC4EC3D8819A99BB2B9508F34947B
          E84CB70ACF84F308C7A7155EFE522CAEF39FF54FDB9E86BFCF93C4BFF059EFF8
          29569DE2BF125A58FED273DBC105F5C41128F0AE89F2A2BE00C9B3CD62BFFC16
          A7FE0A6932346FFB4E5EB290411FF08B689FFC875F85627E9039326E1C93BAF2
          FF00827FA57967ECB0F116B52A7888D7C372C9292BCE49D9ABF4A6CFCEAF8923
          1F113E206411FF0013BBEE08C7FCB77F5EB5EEBFB0C9887ED8FF00B33F98E107
          FC26FA39C9CE07FA5257CC9A8EA379ABEA17DAAEA337DA350B99A4B89E40A177
          C8EC598ED5000CB313C0EF5A9E11F167883C07E26D07C65E10D4E7D0FC55A5DD
          477DA7DEC58325ACE8C191D43023208EE08AFE3EC0E674E96611C534F95494BE
          E699FF0040D9FF000B57C670BD5C920D2A95284A95DECA4E1CB7D9E973FD57A0
          914E1436781C83DB1531946E2B9933DBDEBFCE17FE1EC7FF0005168C0D9FB56F
          C45403FD8B6E8074FF0055EDFAD7ECB7FC12D2F3FE0A87FB6CF89ECFE24FC47F
          DAA3E2A785BF66DD32E717377B2D927F124A8C775B5A1F281081900797A63217
          2492BFD9FC3FE3161735C4C70D84A33727E965E6DBBD8FF9D5F15FF67567FC17
          9355CFB88734C2D2A1057D5D4E6937B462B917349F44BD76D4FEBD558374E94E
          A86185628E2456721570327AD4D5FB523FCF60A2A19A429B718E4E39355CDD60
          3B6410A39C741F8D0FB85CB7BF1D548ACED4597ECD73DBF76DFCABF9DCFF0082
          937FC173B43FD9B7C433FC1EFD9A2D7C33F12FE29DA4C23D6F53BA264D374561
          B73000A479F3727211B098C139E2BF2525FF00838C7F6E0992589BC2DF058295
          DA7FE255313C8F51357E639D78B79260EB4B0D52A3725FCAAEBF33FB5BC33FD9
          FF00E25713E57473AC0E1153A35358FB497249C7A4AD66ECFA5ECDF63F377F66
          6FF94957C4EFFB143C5BFF00A906994572DFB15EB575E25FDBCB5BF11EA0B125
          EEA1F0E7C437D3AC60855925D6B4A760B9EDF371456BE16D453C8E8CE3B3E67F
          F9333CBFA6A65F530DE24E6187AABDE82A29FAAA34D33E53D5C7FC5CEFDA231F
          F454BC63FF00A79B9AF48F835C7C5BF85A49E3FE122D33FF004A16BCE357FF00
          929DFB447FD952F18FFE9E6E6BD1FE0E7FC959F85BFF0063169BFF00A50B5FC7
          3C5DFF00252D6FFAFBFAA3FE83BC0A5FF1A932FF00FB025FFA651FEA8361FEA2
          DB8C7EED7F9568567D87FA8B7FFAE6BFCAB42BFD0AA3F0AF97E48FF932A9F131
          AEE1065B38AF3DF889E38F07F80FC27AF789BC71E26D07C1DE1BB5B791AE750D
          56F23B4B6B704601796465550723A9AA7F1AFE29F857E07FC25F88DF193C7378
          34FF0006785B46BBD7F549B19296D6F134AF81DDB09803D4D7F9937EC8DF167E
          3B7FC1C5BFF0596F0447FB4FEBFAB5E7ECDFA04FA8F8D0F81D6663A5687A2594
          7BA0B04846D4779A636B1C93302EC2594E70028B9ABC59787B7B48DFBAFCD1E5
          5E279E0BDF14F89EEED254BBB49B50B99A2781C32CB1990905586410460839E4
          115F31FC45FDA1BC1DF0B35D4D1FC5FA4789ED7CC198EEA2855A1987A821BB64
          71D6BE9EF16A470F8B7C516F04305BDBC7A8DCA471C71855450FC2A803000180
          00C000015F37FED1FE1BF0BF893E1178ACF890C500B484DD5B5C3E4B413AFDDD
          A07F788098E9F30F4AFF003B78630D82AD9AAC3E3A0E509CB9747669B7A33FEB
          8FC5CCCF88303C0AF34E1AC4428E270D49545ED2378494209B8B77566D2D19E9
          3E0EF1B7867C7BA343AEF85B558354D3DFF8972190F75653CA9FAFE19AEAC0CE
          31839CF7F4AFC72FD903E226ABE1AF8B3A5F8744B70FA2EB4DF649A027F8C025
          5C7BE4FE46BFB4DFF82507FC127FC43FB5F6BDA77C66F8CFA5DF683FB3459CE1
          A2562629BC5B2A921A284821920565F9A4FE2FBABDC8FABE2AF0731586CE6397
          60539C26934FB2EEFD0FC13C1EFA776499A7875538D3891C6855C34BD9D4827F
          1CD2E64A927AB734EE96D1B3BBB6A657FC1293FE0931E2BFDB5BC416DF14BE28
          437BE18FD9C74FB8F9A4E629FC552A33036F6CD90C90AB2ED79704F242F392BF
          DD9F817C05E1CF871E11D07C11E0BD0B4CF0C785F4D816D2CAC2CE311C36D0A8
          C2AA28E00C014BE0AF06F85BC07A1689E14F0668961E1DF0DE9D6EB67656566A
          2386DA150004541C0031FCFD4D7735FD5FC07C0986C8F0AA95357A8FE2977FF8
          07F84DF49BFA4E677E266772C7E39BA785837ECA8DEEA0BBBEF26B776F4D02A3
          69150FCD903B9F4A92BCC3E2B7C4EF047C20F07EBFF107E2478974CF0978334B
          B73757B7D7726C8E08C7524F53938000049270057DAD6AD0A7173A8EC96ECFE7
          2C260EAE22A468D08B94E4EC92576DBD924B56DBEC757AEEB9A5E97A6DCEABA9
          DE41A769D6E8D2CF3CCC1522451CB33138007AFB57F201FF000555FF0082DC5E
          F8E5FC43FB3DFEC77AECDA67843E7B4D67C6D6EE566D44701A1D3F80638FEF83
          30E5BF83030C7E44FF00829FFF00C15FFC6FFB625FEABF0A3E0F4BABF813F676
          89CC52A96D977E28C1187B918063878F962CF3FC5E83F114B6405C9241EA6BF9
          4BC51F1A65514B2FCA6568FDA9FF009763FDCBFA137ECEC86025478AF8FA9295
          7D254B0F2DA0F752ABD1CBAA8BBC57DAD437C859DD98BBB12C58F2589E4924F2
          79A45CE0E6947414A3A37D2BF98A155CA5796ADDBF33FD9985082B24BF4B7DDA
          58FA4FF60A427F6D342393FF000AAF5AFF00D3BE934549FB047FC9E9A7FD92BD
          6BFF004EFA4D15FDF5E114ADC3B865E4FF00F4A67FCB77D3EA0978B59BA4BED5
          3FFD354CF99F57FF00929DFB447FD952F18FFE9E6E6BD1FE0E7FC959F85BFF00
          63169BFF00A50B5E71ABFF00C94EFDA23FECA978C7FF004F3735E8FF00073FE4
          ACFC2DFF00B18B4DFF00D285AFE45E2DFF009296B7FD7DFD51FEFB7815FF0026
          932FFF00B035FF00A651FEA8361FEA2DFF00EB9AFF002AD0ACFB0FF516FF00F5
          CD7F956857FA1547E15F2FC91FF26353E267E67FFC1653E1A78B7E2FFF00C12D
          3F6EAF879E069268FC517FF0EF547B511A96797C94F3DE3007397489D38FEF57
          F978FF00C101F5CFDA974CFF00829D7ECE9A57EC99AF691A178EB54B8BEB5D60
          EA9CE9F73E1E5B479F524BB4E37A88227740B8712AC457E602BFD8AB5AB0B3D5
          74BBED2B51B78EEF4EBA89ADAE2261912C6E0AB29F620E3F1AFF0011FF00DA1B
          C33F137FE09B9FF050FF008BFE0FF87BAFEB7E07F1E7C30F8837F0689A9594ED
          6D7304714EFE432BA92407824407A82AE41E0915AB57561D1928CE327B269FDC
          EE7EBCF8EEEAD6D7C59E2F9E5B88ADED06AB7B879A40005F3988DC7A679E49AF
          9C7E23F8BBE0A6BDE18D5742F1978BBC392E9CD1EE78D6F93CC0CB9C140AD92C
          0E30066BF1E3E2B7C73F88DF17BC41A9788FC61AEDC5D4B737124FF6743B6184
          B3162A88300019F4AF226BEB96DD990FCD8DDEF5FCE39378031A55562B11896A
          A277F715BF13FD83F10FF6AB4B19809E4B95E510A986953F66DD697C4AC93BC2
          2ADF8DFB9FA5FF00F0495F057823E28FFC14E7F633F863E32D207893C0BAF7C4
          0B0D26FEC9E578C5CDBCAE536EF42187073C1E7A77AFF690F03F87747F0A786B
          4BF0D681A5D9E8BA1D844B6B69696E8123B689400A8AA3000006303D2BFC21BE
          0CFC5CF887F02BE29F813E317C27F12DD7833E25786B528B58D0F56B7447934F
          BC88EE8E55590321208E8CA57D411C57FAA37FC1013FE0BBFA1FFC1503C07A8F
          C1BF8C8BA17833F6C6F0CD9ADCEA7676D17936DE2DB10C41D42CA3E885708258
          013B090C3E56C2FF0044430F052F696F7AC95FC96C7F91389CD711569FD5DCDA
          A3CCE4A1F6549EEEDDED65E88FE97C2283900034AC09040A8E62C10953835F9E
          BFB79FFC1447E0FF00EC19E0193C41E3CBD4D7BC7B7B137FC23FE17B6976DDEA
          F20E09CE1BCA854905A5718038193815CF98E65430945D7C4C9460BAB3D0E13E
          13CCB3DCC696539451956C455768C62AEDBFD12DDB76496AD9EC7FB507ED5BF0
          67F650F861AA7C51F8C3E2C87C3FA1C0A7ECF6FB4BDC6A538C6D86DE20099242
          48E074EA7001C7F067FF000507FF0082947C62FDBD3C668FAE3DD7833E10D848
          C746F0B4336E8E33C0F3AE9D70279BE5CF3F2A7217FBD5E0FF00B5B7ED8BF1AF
          F6CFF8A17DF13BE2F7881EE5B263D2F4B80EDB3D16DCE0F936E9EBC02D211BD8
          F538000F95CF2C49CD7F16F89FE2FD7CCEA3C2E0DF2D15F8FA9FF459F431FA05
          657C0B46967FC451588CD64AEAEBDCA3E50EF2EF37E884C924D2D1457E10D9FE
          90C23656FEBE614A3A37D29294746FA56947E25F2FCD171DD1F4BFEC11FF0027
          A69FF64AF5AFFD3BE93451FB047FC9E9A7FD92BD6BFF004EFA4D15FDF9E127FC
          93D86F47FF00A533FE5AFE9F9FF276F37FF153FF00D3503E67D5FF00E4A77ED1
          1FF654BC63FF00A79B9AF47F839FF2567E16FF00D8C5A6FF00E942D79C6AFF00
          F253BF688FFB2A5E31FF00D3CDCD7A3FC1CFF92B3F0B7FEC62D37FF4A16BF91F
          8B7FE4A5ADFF005F7F547FBE9E057FC9A4CBFF00EC0D7FE9947FAA0D87FA8B7F
          FAE6BFCAB42B3EC3FD45BFFD735FE55A15FE8551F857CBF247FC98D4F89952F5
          9120669182460E58E7181DF9FA66BFC45BFE0AADFB503FED99FF000510FDAC7F
          690169696363E20F154B0D8470C6A83EC367147616CCC1782ED059C2CCDDD8B1
          EF5FEDBDAEDA7F68691A858176884F1345B80C95C823207E35FE0E7F1DBC01AF
          FC2AF8D3F163E1A78A6CA7D3FC47A0788B50D22F6193EF4734370F1B03F8A9AD
          483CA68A28A002BEDFFF008273FED53E29FD8B3F6CFF00D9D3F691F09EA57761
          75E1BF1459CF7C91138BAD3647F22F207C75592DE6993183F7B8C6335F1057D1
          FF00B237C0DF147ED29FB4BFC08F80FE0CB5B8BAF1278B3C59A6E8B6C230498C
          493A879081D913739F653401FEEB8D711CF0A3C243AB00EADD88F5FD6BF00FFE
          0B4DFF0004CE5FDA9BC127E3EFC23D2E597E3FF876C7CB6B38B91E23B00726DF
          0480B2A02EC8DDC92A7A82BFBF296915A5BDBDB4259628D422827F8400315564
          B549181652CB8DB9CF6F7AF1788322A39960E783C42BC647E81E15F8A19B706E
          7F87E21C927CB5E8C93B6CA51FB517DD35A35FA9FE50F736F35A4B341730CB04
          F1C8D1488E85591C120AB03C82082307D0FBD4239AFEA77FE0B97FF04BF5D1E7
          F107ED9FF00F4326C277FB478EB47B64C88490A3FB4615CE48FF009EAA076DFF
          00DEAFE581411D41538CE3D3FCF7F7CD7F9EBC6DC1D5F25C64B0B5969BA7DD74
          3FEADBE8E7E3FE53E2370E52CF72D97BF64AA41EF4EA7DA8BF25D1F55A8EA28A
          2BE2CFDE8294746FA52528E8DF4AD68FC4BE5F9A1C7747D2FF00B047FC9E9A7F
          D92BD6BFF4EFA4D147EC11FF0027A69FF64AF5AFFD3BE93457F7E7849FF24F61
          BD1FFE94CFF96BFA7E7FC9DBCDFF00C54FFF004D40F99F57FF00929DFB447FD9
          52F18FFE9E6E6BD1BE0EFF00C959F857FF0063169BFF00A50B5E73ABFF00C94E
          FDA23FECA978C7FF004F3735E8FF0006C7FC5DBF8599E47FC245A67FE942D7F2
          47167FC94B5BFEBEFEA8FF007D3C0AFF00934997FF00D81AFF00D328FF00541B
          0FF516FF00F5CD7F956856769FFF001EF6DFF5CD3FF41AD1AFF42287C2BE5F92
          3FE4CAAAB4995EEA37961291852D9079AFF3CAFF0083A5FF00E0885E3BD3BE27
          F8BFFE0A4FFB30783AFF00C51E10D6916F3E28687A745BA6D1EF1123886AB0C4
          09692195515A608A7CB746908DB2311FD37FFC1787FE0A99F153FE0957FB26F8
          53E31FC20F00F813E20F8FFC43E2983C316516BB752AC1625A096669841161AE
          0E212BB37A019DD938DB5FCEBF88FF00E0E60FF82BBFEC7DE368BFE1E13FF04C
          ED26C7C0122059D21D3B51D0B721030D0EA0FF006AB67CEF5E0A9073F781E06A
          DA5B999FC01BC12C790EBB48EC6A1231C1AFEB03FE0A11FB567FC1BF5FB6B7C2
          9F11FC55F847FB27FC4FFD9DFF006C4D4639A496D74EBA3A4E9827D99134D145
          E7DA4E49007EEE385DB24B115FCA95D5B4692B6CCEDFC78AC61888CA6E9ADD5B
          F13D6C4E4B5E961A9E2E76E4A8E496A9BF75D9DD2D63E57B5CCCAFDA6FF82157
          FC141BF67BFF00826E7EDABE1FF8FBFB417C16D43E2868C6CE5D22CB59B2BADB
          79E09371FBB9AFEDED8A95B8730B3C654B230576DAD9383F8B34F591954A8C6D
          EB82335B9E49FDCF7C6EFF0083C43F6A8F891F11FC5EBFB1CFECE5F063C13F09
          744B69EFD65F1DEABE7EA3AA5AC58CCC57CEB78D246C12B6D179CFF370588CD7
          F5F1FF0004E3FF0082B2FECA5FB737ECE7F043E235B7C6DF839E1BF8C5E23D1E
          2B8D67C1527882DE2D4749D4558C33C02DA47129512C4FB0E0EE428C090413FE
          2DB15C490B89136EE1D32334A2EEE15C4892323F1C8EF8E9FCA803FDF175BB3B
          0F1169B77A35E5BDBDFD8CEA639E195415963230CA41C8E738E7FF00AD5FC24F
          FC161BFE0987A97EC69F1097E2C7C2AD326BBFD9E3C45744C7146B91E19BD3B0
          9B672493E4C8DB9A33C631B33C2E7F9FCFF82517FC1C43FB6C7FC13C7C69E1AF
          0AF8BBC61E21FDA27F65F0C21BFF00056BD7BE6CD65093CBE977920792DE4507
          223C989B68054751FEA0FF000FBC73FB347FC14C3F649D03E217856E74FF008A
          1FB3F7C42D159E212A32178C96478A54C868AE219519197EF24919EEA0D7C271
          F703D1CEF07EC2A7C71BB8B3FA4FE8B7F492CD7C34E238669866E785A8D46B52
          4ECA71EEBB4A3BA7E56D9B3FCD0495C02C4014A0E47073E9EF5F4FFF00C15A7F
          65AD77FE09B9F16EE3E186ABE29B11A278865497C1BAE4F2C61E6B3691448F2C
          6096478431462400DC11F7ABF32AEFE2EEA7A07F63E93A79B0F1ED8331BA3AC5
          ACE8E0E9E8C3CD696356CA4A819171D1BA8AFE2D9786199479A1256926D59F5B
          754F63FE8E72DFA5CF06E2614B1184ADCF87A908CB9E0F9ACE77E58B827CD7BA
          7CCED65D5AB9F4C528E8DF4A6ABC6E8AE8EAE0852ACA7218119C834E1FC55F9E
          C694A13E592B34FF00547F50D0A8A6A338ECD5D3EE99F4BFEC11FF0027A69FF6
          4AF5AFFD3BE93451FB047FC9E9A7FD92BD6BFF004EFA4D15FDF1E127FC93D86F
          47FF00A533FE5BFE9F9FF276F37FF153FF00D3503E64D69D63F897FB4548ECAA
          83E28F8C892480001AC5D13C9F615A1F0DBE20F86343F8D1F06ED2F2F92586EB
          C43A5BFDA621E6436CA6ED111E471C22B31C027BF5C5739E328AF27F1B7ED356
          F6091497D27C4BF1B451076DABB9B57B95049F6DD9FC2BF207E327C53BFF0006
          6B5E27F863F0E750974DF0980B6BA86C1CDDCCA8124C13F3042431C67A96F5C5
          7E3397702D1CDF88F173949FB952F65B7DE7FA75C59F48DADC05E11E46D534E9
          E230B08733D5F3BA6AD18C6EAFA5F9DDFDC4D3D5E87FB89E997514890C4BBB78
          450411D0E2B66BFCD33FE0DFBFF838BFE28FC18F8D117ECF7FF0513FDA26FF00
          C4FF00B36EA1A4CE346F1578A9DEE27F06DDDB40CE911B848DA69609C46220B2
          1608FE5E3019ABFA20F835FF000750FEC6DF11356FDA12FF00C73E1ABDF855F0
          D7C37E1FB8F11782359BAD523B897C79143E686B56B7441FD9F7F2F948F15A4A
          ED23C7286217183FD754E36563FE7A64DB6DB3E49FF82DD6A11FFC140BFE0B47
          FF0004B3FF008260786263A9F877C29AACBF10FC7B121252DE2648EEF6CDC00A
          56D2C24232727ED883AB2E7FA74FDB4FE2F7C1CF861FB3F7C521F13FE237C3AF
          02417BE1BBF82C175ED4EDAD56F246B77555884CC03B6480000724E2BF845FF8
          26DFFC145BF67EFD9E345FF8281FFC16BBF6C0F8BDE0DD7FF6E0F8AB7177A27C
          33F0069B751DF6B5650EE640ED6A0FEE2D818AD22569F6010590C13E722B7E27
          FC34D4FF00613FDA67C1BF137F692FF829BFEDE5FB4778B3F6ACD66EAEA4D3FC
          35E1BF0CCFA85CEFC3847BFD42E635B54477DACB15B31548F00ED23688C445CA
          9C92DEC76E575393154AA3B3B4A2F5DB492DFCBBEFE8617C40F0EFEC8BE23FB4
          8D7358F0668DAB953FE93A7DE08990F63B50953D3A727DEBF253C49A6DAE9DAD
          6A7A7699A8C5AAD943318E3B8881D9328380C01E6BF443E0E7C2DFD93BE214B2
          DB68F79E23BCD601F96CF52B9F2A59060E4A851B5B91D01C8AF7CF1BFC00FD9F
          7C29E08F11EB17DE07B6B2B3B6B6699E686EA612EE1D0233330C966515F8064D
          C6986C8F17FD9B5A55EACA6D24A71492FF000F53FD72F12FE8F59DF8A593C78A
          B05432DC1D2A319CE7530F524F9D2576AA34B96FA764D6C7E24082438E060D44
          CA54E0E335EADAF7C37F13E85E13D07C7775A5CD0786F5296416B701B70F9588
          208EC7EBD719AF2F9F860376EAFDFF000F888558F3D3774B4F9ADCFF002633AC
          871797D55471B4A54E4D29252566E32578C97935AA7D4828A28AD8F18922708C
          58E7A11F9F15FDE87FC1A6BFF054CF81DF01BE0D7C45FD913F69FF0089E7E17D
          B6ABE323A97C3DD535C81E1D0E79E4B556BCD3FEDE479304FBA38E5549594379
          8DB79E0FF085A2689A9F882FBFB3748D3B50D56FCC524CB05AC0D2C85510BBB6
          D504E1515D89C70149380090E9354D5AD6CBFB0C5FDEAE92263722D4CAC62129
          50A64D99DBB8A8DBBB19C7192282651BAB1F7FFF00C153BF6A6F177ED7FF00B7
          AFED47F1C7C5DE283E2C5BFF00185FD968B7314E25B78B47B59DEDECE3B7230B
          E488628CA9030725B24B163F2B7C19F8B5A9FC2DF13DBEA56E45D69B39106A16
          8EBB92EADCF0CA41FAF1EF5E2AF3C92021C82339E9FE7D6BA5F0EF857C43E258
          B55B8D0344D67591A7DBB5EDEBDADB3CAB696EBD6594A83B1071963C723915CD
          8EC253C451950AAAF192B33E9785B8A31B93E614B32C04DC2AD269A69FF5A35A
          35B35B9FD0E78722D313C3FA5B68D25C4BA53409240D2BB336C60180C9F62073
          D302B697A1FA57CC3FB3378ABC43AAE813786FC5572D71796765A75D58334223
          3259CD06E03A027695C64F5EB5F4EA642907D3FAD7F9CBC659254C0667530F51
          DDA69FC9B563FEBD3C0AE3DC2F1270B60B36C1C1D384E16717A59C74977FB49D
          BCACCFA67F608FF93D34FF00B257AD7FE9DF49A293F60923FE1B4D391FF24AF5
          AFFD3BE93457F667846BFE31EC37A3FF00D299FF0038BF4FCFF93B79BFF8A9FF
          00E9A81F2DF8B1EFA1F1BFED4B7FA7DBBCF3DAFC45F1B5CB2C685B685D56EDB2
          C073B78E4FBD7E1E7897E177C50F19FC46D560D33C3175AB7883528A3D67ECF1
          C2632619C09048AAC47C9F37DEE9EF5FBDABFB72784BF640B0FF00829AE990CC
          D7DF157C7177E3FF00047872CE050DF669AF35F92396E663C88D52DDAE587766
          0A063391F9BDFF000509FF0082AEFC73FDB8D7E14F80AF3C3BE0FF0084FF0004
          BC03A0C1E1CF08787349B48DEE6D6C52DE387FD2F5231ADC5CBBA46A59495889
          27118AD782786A743178CC6BD1D4A8F4B745B1DBF49BF196866B9270FF000C4A
          0E5470785A2DCA33FB73A69C935CBA38DAC7E5FEAFA4DF68D7177A7DFDB8B7BB
          864314ABBC3E18120E08241E41E41C1AC3AB535E4F3A949595813B89C724FAE6
          AAD7EA2B6D4FE1793BBB851923A1228A2992696957D73A75E45776B752DA4E9F
          323A920A91F4AF7BF137ED21F127C67E0D87C15E20D756FF0048595646768809
          A50BD159C72C3EB5F39838E94F12B8C0040AF3F179561ABCE352AC14A51D9B5A
          AF43EBF87B8FB39CA70F5B099762674A9565CB523193519AED24B468FD65F07F
          ED57F01FC43E13B5F02F89FC3D77A0688B6C96DF659A31710ED1DCB00181CF3B
          80CF35E01F103E187ECD3A85D4DAA781BE3369BA1AB6596C6EACEE648D0FA2C8
          10B63AF515F0DADC48808078FE54866738E95F2797F00D1C1622588C1569D3E7
          D651BA69BF467F437167D2DB1FC4995D2CB389F2DC362DD18A842A384A152115
          B24E9CA3F75ADE47A2EA9E11D2A09654B6F1A785F508C0255A3370B91F468862
          BCF644D859377CBD8E29A279071BB2298CECD9CE326BEE20A4BE277FB97E47F2
          D66189A35657A34F9176BB76FBF53BEF05FC4CF1AFC3D935D6F0578B3C43E13F
          ED4B0934CD41B4EB9781EF2D1FEFC0EC8558C6C40DCA0E0F704715C1CCFE6485
          F71627A9C7F9ED8A8A8AD0F3C7C6C11B2413F4AFBDB4CFF82957ED836BFB32CF
          FB1A5FFC62D5758FD972E0DAA5DF8366B1B6582EE086E85D25B9BB8D12ED2133
          2AB32A4CBBB8CF4AF81A8A00FDBAF8EFFF00054EF0D7ED47F12FE0178DF52FD9
          97E19FECF5E25F0E787D7C1FAE5F7842F6E469FAFE9312C71D886B29439864B5
          58CA89048E5D59411F2827F547C21FB0CFED83E3CF09E89E39F047ECE1F163C5
          3E0DD56CE2D434ED4EC749926B6BCB69103248922E4152A4735FC7F457B7101D
          D13946C633DC57F7CFFF00069E7FC15FB4D97C330FFC12DFE3D6AF61A7DC235E
          5E7C29D4A71B56EBCC79AEAEB4891B180FB9A69E124FCC0C918C6D8C1FCA78E7
          C27C0E75888E2AACDC24B476EA96C7F727D1C3E9DFC4FE1D6555324C251A788A
          152575ED5CDF25F7B59AF23E0FFD8674FBCD33F6DEBAD3350B77B3BFB6F865AE
          C13C522E1E291758D2432B7B8208FC28AEE3F665C8FF008295FC4F8C05551E10
          F16F418E3FE120D33D3EA68AE9F0B29FB2C8A853EDCCBEE933C2FA70E73F5AF1
          3B31C5575C93A9EC64D76E6A34DFEA7F2D7FB6A4DB7F6C4FDAC537B84FF8597E
          27C0EB8FF89A5C57CBD232B11B4923E95F4C7EDADFF278DFB587FD94BF13FF00
          E9D2E2BE63AFD312B1FC737EE145145310514514005145140051451400514514
          005145140051451400575FE0AF18F88BC01E24F0F78CFC1FAD5FF877C5BA5DEC
          5A869D7D6AE526B3B989C3C72A3766565041AE428A4D27A32E9CDC64A4BA1FD4
          7FFC126FE3CC9F1F3F6B1BCF13EB73B4FE39FF00856DAF49ADB9503CEB89358D
          258CA00000DE4B36070092071457C83FF040494B7ED8DF12814207FC2B3D4481
          CF1FF135D2E8AF3F2ECAE8E1692A3495A2AFF8BB9F6DC6BC7F8DE20CC259A667
          EF56946116FBA842308FCF962AE7EC4FED01FF000435FD92FC7FF1CFE33F8DB5
          8F881FB43DAEABAC78B356D52E63B6D5B4D58A3966BA92661186B0660A1A4206
          493803249E6BC7FF00E1C09FB1C7FD148FDA5BFF00071A57FF002BA8A2BD13E1
          83FE1C09FB1C7FD148FDA5BFF071A57FF2BA8FF87027EC71FF004523F696FF00
          C1C695FF00CAEA28A003FE1C09FB1C7FD148FDA5BFF071A57FF2BA8FF87027EC
          71FF004523F696FF00C1C695FF00CAEA28A003FE1C09FB1C7FD148FDA5BFF071
          A57FF2BA8FF87027EC71FF004523F696FF00C1C695FF00CAEA28A003FE1C09FB
          1C7FD148FDA5BFF071A57FF2BA8FF87027EC71FF004523F696FF00C1C695FF00
          CAEA28A003FE1C09FB1C7FD148FDA5BFF071A57FF2BA8FF87027EC71FF004523
          F696FF00C1C695FF00CAEA28A003FE1C09FB1C7FD148FDA5BFF071A57FF2BA8F
          F87027EC71FF004523F696FF00C1C695FF00CAEA28A003FE1C09FB1C7FD148FD
          A5BFF071A57FF2BA8FF87027EC71FF004523F696FF00C1C695FF00CAEA28A003
          FE1C09FB1C7FD148FDA5BFF071A57FF2BA8FF87027EC71FF004523F696FF00C1
          C695FF00CAEA28A00FBF3FE09CDFF048DFD9BBF666F8DDE29F1E780FC6BF1BB5
          6D62EFC2B73A4491EAFA9584B0AC2F776929651159C6DBF75BA0C92460B71D08
          28A2803FFFD9}
        Properties.Caption = 'kongregate.com'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 3
        OnClick = kongregatelogoClick
        Height = 168
        Width = 161
      end
      object googlecodelogo: TcxImage
        Left = 400
        Top = 223
        Cursor = crHandPoint
        Hint = 'code.google.com'
        Anchors = [akRight, akBottom]
        ParentShowHint = False
        Picture.Data = {
          0A544A504547496D616765FA4B0000FFD8FFE000104A46494600010100000100
          010000FFDB004300010101010101010101010101010202030202020202040303
          0203050405050504040405060706050507060404060906070808080808050609
          0A09080A07080808FFDB00430101010102020204020204080504050808080808
          0808080808080808080808080808080808080808080808080808080808080808
          08080808080808080808080808FFC00011080083015E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEFC
          CE38FBBD3DE86C64FDDFD68CF4E474F7A18F5E47EB4009C7FB3FAD1C7FB3FAD2
          E7DC7EB5135C46809675000C93CF1400F25475283F3A5E3FD9FD6BE19FDA33FE
          0A3BFB1CFECC56976DF153E31E8716AD0E73A5E968FA85E161FC3E5421B69FF7
          8AD7E3C78E3FE0E6BFD9E6D750BBD37E117ECF1F197E256D62B1CF2C96F6AB2E
          3BEC8CCCE3E84035FA570FF83BC4F9A51588C160A6E9BDA52B422FD253714FE4
          D9F2B9971BE53849FB2AD5E3CFD97BCD7AA8DD9FD36657AE531F8D2F1FECFEB5
          FC94DD7FC1CE1AAE9B701F57FD897C55A669D9C992E35992360BEB96B7C57BA7
          C35FF8397FF670F12CD05BF8E7E04FC58F0A231DB25C69B7569A82C7FF00012F
          131FC01AFAA5F46BE359439E8E0BDA25FC93A727F729B6FE48F25F8A5912972D
          4AFCBFE28C97E713FA62CAFAA7EB471FECFEB5F9CBF037FE0ABBFB09FC7B9ECB
          4EF09FC77D0741F104DB42E99E228A5D2AE771E8A04E1518FF00BAC6BF442D35
          1B3BFB78AEAC6EEDEF2DA450F1C913EF5753D0861C115F94E7FC2B9A65357D86
          6B869D09F69C5C5FE291F5D96E7384C643DA612AC6A47BC5A7F916B8FF0067F5
          A38FF67F5A0386E43023F1A5CFB8FD6BC13D2138FF0067F5A38FF67F5A5CFB8F
          D68CFB8FD680138FF67F5A38FF0067F5A5CFB8FD68CFB8FD680138FF0067F5A3
          8FF67F5A5CFB8FD68CFB8FD680138FF67F5A38FF0067F5A5CFB8FD68CFB8FD68
          0138FF0067F5A38FF67F5A5CFB8FD68CFB8FD680138FF67F5A38FF0067F5A5CF
          B8FD68CFB8FD680138FF0067F5A38FF67F5A5CFB8FD68CFB8FD680138FF67F5A
          538E3EEFEB467DC7EB4A4F4E47EB400DE3FD9FD68E3FD9FD6973EE3F5A33EE3F
          5A0042540C92807E348190F4287F3A8EE2511C1348433055270A0927E83D6BF3
          BBE2BFED2DFB4326A9AAE8DF0CBF674F1D681E1FB6DDE6F8A3C4090242C06499
          21B6136F2831D64DA4FF0076BC9CE339A582A5ED6AA93F28C5C9BFB93B7ABB23
          C2CFF886865D47DAD68CA57D9422E4DFC92D3D5D9799FA29B90F468FF3A5CAE7
          194CFE35FCAFFED69FF0578FDA07E02E8515FF00873C7BE04D4AF9C12A9368A8
          C381ECE2BECEFF0082527ED65FB567ED51F0F34FF8F5FB48FC4AF8796FE11D65
          A74D03C31A3686209E5851F67DA6E672EC40255B6A28E4724F38AF8EE19F1370
          59B62DE0F074E7CD1576DA565EAF98F85E0EF1832ECF7172C1602954728EEDA8
          A8AF9F31FBA7C7FB3FAD1C7FB3FAD456F2A490C6D1B65768C649F4A9B3EE3F5A
          FD1CFD5C4E3FD9FD68E3FD9FD6973EE3F5A33EE3F5A004E3FD9FD68E3FD9FD69
          73EE3F5A33EE3F5A004E3FD9FD68E3FD9FD6973EE3F5A33EE3F5A004E3FD9FD6
          90E3B629D9F71FAD21391D41FCE80173D391D3DE863D791FAD19E9C8E9EF595A
          D6B363A169BA96AFA9DD4167A6DAC2F3CF2C870B1A2824B13E80034E316DA4B7
          64CE6A29C9EC8E37E287C58F047C1EF086ABE37F1F6B56DA26836A849776F9E7
          7E711C4BD5DDB180A2BF920FDBDBFE0B01F1BBE3678FAD7F673FD96ACB597D73
          5591AD6D345D1DB1753AF3BA5BCB91C47128F99B90AA3AEE3C1F2FFF0082CA7F
          C149B58D5A6D72E34ED41ECF4A4125AF8734C5720C717DDFB43AE799643939EC
          0802B9AFF825A7EC8FE22F0F78522F16F882CA6BDF8E5E348D2F75EBF95732E9
          766E7745A7C24F2AA158349DD9DB93F2815FD5F4386F2FE02CA69E699A528D7C
          CEB2BD3849270A57D9B5D64BF0D9773F1959962B897192C2E1A6E9E0E1BC96F3
          F9F6F2F9BEC7A07C04FF0082717C358EEED7C57FB515F5DFED37F14E42B29D12
          09E587C3BA649D4A958CABDE303C6E9184679C27423F67FE197ECFFE26B0D32D
          34EF007C35F05FC38D15502C56DA4E8F6F6891AE381FBB453F9E4D7DE3F01FF6
          5FF0CF81348B5BBD4ACA3B9D4980662E326BEBEB5B0B2B38D62B6B6B78A31C00
          16BF9FB8AB8F738CEEB3AF99E22551BE8DBE55E4A3B25E87E9F9470F607010F6
          784A518AF4577EAF73F26B56FD94FE23EB369343AAB59DFC6CA43473DBC6EA47
          A608C115F9A9FB4C7FC1227C05F11AD2FB52BEF86361E17F156C262D73C3918B
          1B946E705D23C4528CFF0079493EB5FD4DE076200F419C555BAB3B4BA8648A78
          2095181C82B5E5E47C4B98659596232FAF2A535B38C9AFCB7F47A1D78FCAF0D8
          AA6E96269A9C5F46933FCC67F69DFD963E35FECA3AD3C1E3BB19BC49E0396531
          58EB914242AB8E7CAB841FEAA4E9EC7B1AF45FD823FE0AB5FB72FC07F8E3E04F
          83DFB396B9ABFC68D1354BE5B77F01EB52B5C58CD1646F92399F2F6210649915
          95140F994F02BFB4AFF82997EC81E33F8F5FB39F8CFC13F02BC3BE027F1FEB48
          34F92F75E936DA6976AD9F327DAA8CD24800C2A81F78835F851FB177FC12BEDF
          F663F102E85A296F147C48BB0A9AEF889A02A662304C36F91B92DC11C0EAD8C9
          C9C57F5DE6FF004A3AB9A7072C06754E9D7C45DC526AF756569B56B41ADAF177
          6F5491F8CE07C2586173B78AC04A54E95AEDA7B3BFC29F55E4F63FAFBF871E30
          3E31F0AE8BAADD2D8C1ABCB6B14B790DB4FE74504C5017449001BD436406C0C8
          00F7AEFF0077B8FD6BC1BE027C3CBBF007842C74FBCB89269BCA5CEE39E6BDE7
          3EE3F5AFE293F73419F71FAD19F71FAD19F71FAD19F71FAD030CFB8FD68CFB8F
          D68CFB8FD68CFB8FD6800CFB8FD68CFB8FD68CFB8FD68CFB8FD6800CFB8FD68C
          FB8FD68CFB8FD68CFB8FD6800CFB8FD68CFB8FD68CFB8FD68CFB8FD6800CFB8F
          D68CFB8FD68CFB8FD68CFB8FD6800CFB8FD68CFB8FD68CFB8FD68CFB8FD6800C
          FB8FD6949E9C8FD6933EE3F5A527A723F5A004CFB8FD68CFB8FD68CFB8FD68CF
          B8FD6801AFF32B292B823BE6BE7CF8F5E12BCD73C01E35985EC96D045A55DC99
          43D844DC57D084E46323F5AF2EF8DD37D9BE0E7C519C30529A05F9CF3FF3C1EB
          8F319F2E1EA4BFBAFF0023CFCDAA72616ACFB464FF00067F9BCFFC14CF4EB8F0
          EDEDBE9CBA85C4A8600C017F51DFF3AFE9EBFE0887E0D9AEBF679F81715C4B2F
          D9A1F0E5A3A211F777E5FF00AD7F305FF0554BBF33C550459002DB0E9F8D7F60
          1FF0461D316CBF67FF00847B171B7C31A58E7D7ECEBFE35FCE1F477A497D65AE
          FF00A9FC9FF453A0953C54977FD59FBAD046B0451C484055503BD4B9F71FAD19
          F71FAD19F71FAD7F4D9FD8019F71FAD19F71FAD19F71FAD19F71FAD0019F71FA
          D19F71FAD19F71FAD19F71FAD0019F71FAD19F71FAD19F71FAD19F71FAD0019F
          71FAD21391D41FCE973EE3F5A42723A83F9D002E7A723A7BD7E727FC1493E2E2
          F813E10A783EDAE44175ADB3B5DB0620AD8C2373FF00DF4DE5A7D09AFD187623
          07231DEBF9B0FF0082CBFC513A7F89BC5BA70BC2ABA6787A0B78E3271B5E52EE
          C7F2DB5FB1F80BC311CD789F0F466AF183E77FF6EEDFF9334CF84F12333FAAE5
          15649D9CBDDFBF7FC2E7F245E27BAB8FDAC7FE0A1FF0DBC157E3ED7E16B5D646
          A1750E72AD6D6999B611DC332229FAD7F7CDFB057C15B7D23C3F1F89EFEDA3FB
          449F38257A67D2BF841FF82576949E2DFDBF754BFBA559A55D16F1E32FEAF342
          9FC89AFF0049DF80DA245A1FC3DD12DE38D21FDDAF03FDD15F43F498CCE75F89
          A74DBF769C525E9A9C7E15E1634F298CA3BC9BB9ED0A0280A3181F5A767DC7EB
          467DC7EB467DC7EB5FCF67E8E19F71FAD19F71FAD19F71FAD19F71FAD0050D42
          CA2BFB496D640BB5C63E95C1E83F0C3C35A06A12EA56F6B135DB36EDC100E6BD
          2F3EE3F5A33EE3F5A2C022E1542AED503A0E78A5CFB8FD68CFB8FD6BE60FDA8B
          F686D0FF00676F87F7BE27BB58AFFC4738922D2ACD9B026940CEE73D446BC163
          E9C5716639851C2509627112E58455DB3D8E1FC83199A636965D80839D6AAD46
          29756FF24B76F64B56753F1B7F68CF845FB39F855FC5FF0017FC77A3F84B4C21
          BC95B87CCB7247558A25CB39FA0AFC60D63FE0BB73FC45D6B55F0F7EC7BFB1F7
          C62FDA14DA48629755F9EDED148FF6628E5FC9990FB57E2A691E2ED63FE0A53F
          B5B78EAFBE2EF8AB5ED67E0AF83BCB97C40B0DC346759B9959BECFA65BED6C45
          1111C8EFB4E76003AB57F473F07FE1E78B35EF0DE8FE18F87DE1BD27E19FC3BB
          38560D3F4BD2AD92D6D6D620000A91A003A632C79279249C93F9F6598DCDB3B8
          BC4D1A9F56C3BF86C94A725DEF2D22BC92F99FD21C55C3DC1FC0B516598EA1FD
          A998A49D4BCE74E8526F5E54A0D54A8D756E49792774BE20F127FC16FBF6A3F8
          5B35BDC7C6DFD8CCFC36D21DC279FA81BE821249E07DA0A3203F5AFA47E11FFC
          1793F662F15EA5A6E8BF17747F10FC1B9EE9D238B52699750D332C700BCD1AAB
          C633DD9303D6BEA1F17FEC7BE20F11E83A8E99AADDDBEB16571118AE2D6ED7CD
          8AE10F055E320860471C8AFE437FE0A65FB03F8A7F645F1543E2FF000C69D709
          F087589CC06D5325345BB393E5A7FD31700ED1D88603A8AF98E347C499150798
          E1313F58A51B7346718DD2EF74969F91FABF82187F0C7C40C72E1CCDF2C59763
          2A27ECAA51AB539652B5F96D52524A5A68A5CC9EDA3693FEFF007C2BE2FF000F
          78DF41D2BC53E10F10693E26F0E5F42B71697D63389A0B88DB90C8EA4861EF5D
          4E7DC7EB5FE76FFF0004BDFF0082A9F8F7F600F8AFA5783BC79AC6B3E22FD977
          5DBD48F5BD2E69DA51E1E91DB1F6FB30C7E4DA4E648D7875E7AA835FE845E17F
          1368BE2DD1B48F11F87F51B4D5347BDB78EEEDAE617DF1DC42E8191D181E4152
          08FAD7E81C0BC6B433BC1AC4D35CB25F147B7FC0EC7F3B7D203C08CC380B3979
          7E265ED28CF5A752D6E65D535F664BAAF9ADCE9B3EE3F5AC1F11789348F0BE9D
          3EAFAEEA767A5E9D18CBCB33ED51F9D37C4BAED9787B49BAD5AFA555B7854B11
          DD8F602BF9D3FDABFF006A1D67E3E7C7ED3BE00787FC4975A27862DA36BFF11D
          EDB3F36B60AD868E1E7FD748711A9E39627B57E23E36FD229E439C61783B87A8
          2C5E778B578536ED0A70D57B5ACD6AA374ED15ACACF549367E73C31C2CB1B19E
          2B133F6787A7F14BABFEEC7BB67E9DF8ABFE0A21F0FE2D7EEBC2DF0C7C23E2EF
          8AFAF42DB648F4D81CA47CFF00132AB151EE40AE2AF7F6FF00F1CE86167F15FC
          0FD7FC2F619E66BA49762E7FBCE0103F115E49F063C33E20D6B42B3F09FC2AF0
          F5B781BC15092163B75DAD31C60CB33E374B21EA5989CD7D117BFB2BF8C6FAC5
          FCFD7EE5A72A410C4907EA2B5C6F841C7598617DA62F89AAD1C4B5B50A14634A
          2FB28CE32A925EB3BB3AE8F10E51467CB4F0319D3FEFCE7CCFEE692F923A1F0B
          7EDF1F0FF554B497C43A3EA3A1DA4833F6AB7905CC2BEEC00561F91AFB47C25E
          2FF0F78DF47B7D7FC2FAD69FAEE8F28F927B7937A93DC1C7423D0F35FCFA7C63
          F805E37F83BAADC6AB1404E812BE2E12104223138DC01EC735E37E01FDA6BC77
          FB2B78EACBC5BA34D77A87832E264FED8D1F7930DE43BBE6641FC3281B8A91DF
          83C1AFE56E1FFA51F1A701717FFA9DE2638E268CACE189845424E0F453E58A51
          9477E64A2A49A7BDAC7E818CE00CAB37CB7FB4F22BD39ADE0DDD5FAAD754FB6A
          D1FD4B67DC7EB4849C1F980FCEBCE3E15FC50F097C5AF03F87BC79E0ED4A2BFD
          0352B64BAB793383B5BF85803C3039047A8AF2AFDA93F68AD03F66FF00867A87
          8CB5544D435798B5B697625B06E67DA4E49EC8A01663E95FEA8E4182AB9A56A5
          432F5ED2556DCB6D6F7D534FB5B5BF6D4FE7BCCF174F074A75B12F9630DEFD3C
          BD4F50F89DF17BE1BFC19F0EDC78C3E28F8EBC37E05F0CC5F7EEF52BB58509FE
          EAE4E59BD8026BF2B7C53FF05DCFD83745D5EE747F0E78C3C53E3E962731B5C6
          9B61B6DCB7A092564047BD7E127C3DF1549FF052AFDAE3E2278BFF0068DF146B
          DE30F827E0768D24D123BA78A1D675094B186CA35523C9B65446770A3738DAA4
          F39AFDF5F0AFC2AD3B5AF04A7847C01F05FE17F84BC062136F0E996BE1DB58ED
          8C78E8C9E59DFC752724FBD7EDB9D70CF0C70C621607388D4C662924EA2A7354
          A9C1B57E54DC6529C9756B95743E0F0199E6F9B52FACE0DC68517F0B945CE52D
          776AE924FA6E5ED2FF00E0B0FF000275AD3DB53D2FC17E3EBBB409BC912DA74F
          FBFB5F35FC43FF00838ABF64BF86D70F69AD7C3BF8B7733AE72B01B23CFD4CC2
          BF1E3FE0A67FB0478F7E03E99A97C6FF00833A5DD784BC228DFF0015168762CE
          2D6DE366C7DAADE3E446A09C320E003918E457E2EFECFF00FB58F8E7F65CF8A1
          6FE2EBED2742F1DFC3FD4A48E2F1168FA9E9D05E09E107FD7422656F2EE10312
          A463772AD5FD1FC2BE0DF03E71C3D5388727C354C438DD7B2756509464B78CA4
          AFADB557B26ADAABE9F9966FC6D9F60B338E598DAB1A57FB7C89A69ECD2D34FC
          8FEDE7F64DFF0082D5F857F6DAF168F0D7ECFBFB267ED2BE23D2A398457DE20B
          A8AC2DB47D30640266BB6B8DA48EBB132C7D2BF537E3EDE07F80DF166E37820F
          872F8E01CE0F92DDEBF3ABF656F0EEB3E3EF05782BC61F0F6FF45B7F86BAA58C
          3AA69834A8960B678665122BAC7180A0B07C9E3AD7DD7F1DEC2E746FD99FE2EC
          1732C92DC2F872F0162D9C9F28D7F0378878DC0D6857780C37D5E9C6325CAE52
          9BBD9EEE5D7D123F64C7D1AF4B29AEF1157DA4B924EF6515F0BD92FF00827F9D
          27FC153650DE3874EC2123F435FDA1FF00C11F60117C02F86046001E1AD2FF00
          F4952BF8AEFF0082A3396F88178082311803E9CD7F6CDFF048C4FF008B13F0E0
          9E3FE29CD33FF4952BF973E8ECBF75887E6BF367F3B7D157FDDF15EBFAB3F668
          B1C1C119FC6BC53E367C7FF857FB3E7842EBC6DF16FC69A67837418F3B1E77CC
          970C3F8228C65A46F6028F8F5F19341F817F0E35DF1FF883F7D1DBAF956B6E1B
          0D7970C0EC897EB8249EC01AFE353C4DF1275BFF00828DFEDB9AC787FE2A7893
          54BDF847E14886A7E2582D6E1A359D7795B7D2EDB07F768EE0EF61F3145639CB
          71FAEF13F1654C3D7A797E022AA626A6C9ED15FCD2F2F2EA7FA5BE14F8454335
          C162388B3DAB2C3E5985F8A5149CEA4B4FDDD3BE9CCEEBDE7A2BECFA7EC3EBBF
          F05D2BBF1FEADAC695FB22FEC95F16FE3BE9B69218A5D71A2963B4461D46C862
          93F26753ED5E5317FC17AFE23F84FC44741F8AFF00B36E9DE11D5402EDA5DF5D
          DDE9B7454752A6689D5BF018F7AFB8FE137803C55E28F0CE8DE17F879E1FD2BE
          1E7C38B28D6DF4FD2B4CB616D6D69101C2AC6A001C77E4939249CD713FB50FFC
          13B4FC72F87D7FE19F1A25B6B6A51DAD2E593373A64D8C0960971B90E7AE0F38
          C1AF2B30E18CFE545D5A3983F6DDB920A0DF6D9BB79EA7D7F0DF8A1E1D51C6C7
          0D8FE1E5F526D273F6F5655926EDCCDF328376D7962A2AFB33DAFF00644FF82B
          6FECBBFB5B789A3F86FA6EB97DF0CFE2DBA3345E1ED74A2B5E903245A5C29F2E
          72393B461B033B6BF493C5FAAEAFA4785F5AD5F425D3E7D42DADDEE116ECB889
          820DCD9DBCF406BFCB7BF696F0F6BFFB3678E755F0FDFF00892F74CF1FF86B57
          92D52F2D25314F6F7504842CB1B2F28C0A86073DF15FDC87FC114BFE0A2507ED
          FF00FB25E8D71E3FB9B5BFF8C3E1D91FC35E2BDEA31A8C88A3CABA2BCFFAE88A
          961D3787AF2FC2BF103159AC6786CC636AD0BEAB452B68F4EEBADB43ECBE96BF
          472C9F84A74735E19ACE783ACA2DC24F99C3995E2D3DDC24B6E6F793B26DDF4F
          A1B44FDBBFC570F827F667F8A3E38F04F84F49F877E3C9638753BCB4D4252DE1
          9F38F976CF21740248DE629193F2EDDE0F35F4C7ECB7F1E75BF8F9E18F1FEB1E
          21F0CD8F84B55D0FC59A9786A4B486E5A6CADBB8092392AA55D95D58A738CF5A
          F5087E0FFC2DB7D1B4EF0E45F0F3C17FF08FDA4621B6B1FECC84DBC0825136C5
          88AED0A2455703180C335D6685E17F0E786E7D6EE740D0346D0EE752BA37FA8C
          9696C9135FDC950A6698A81BE42154166C9C28E78AFD88FE283A1CFB8FD6909C
          8EA0FE74B9F71FAD21391D41FCE802398F039E715FC40FFC174BC75E25D3BF6C
          7F8A5E09779E2D26E345D2AEA15FEFA980A923F1535FDC11C1209C1FCEBF8EEF
          F83913E135D685F193E0DFC67B7B771A66BBA14DA05CCC17E51736D2191149F5
          31CAC7E8A7D2BFACBE85B8EC3D2E37851C47FCBDA75231FF00124A6BFF004967
          E33E3B61EACB21955A5F62516FD1FBBFA9F803FF0004ABF1043E13FF008283F8
          02CEF1D2DD359B4BFD353774925DA25551EE4C1C7D6BFD32FE15CB1C9E07D0DA
          37423CA5E9F415FE505E1CF17EA9F07BE34FC38F8BFA1E5752F0E6BB69ABA2A6
          7E748E40644FF8126F5FC6BFD45FF63EF8A3E1FF008B1F053C15E33F0CDFC3A8
          E89A958C17D692A1C8689E30C0E7F120FBA9F4A8FA5C70954C0E7F1C65BDCAB1
          B5FCE2DFE8D335F0673A86232D742FEF41FE0D2FF23EABCFB8FD68CFB8FD68CF
          B8FD68CFB8FD6BF940FD8433EE3F5A33EE3F5A8DE6D992D80A3A9C9C0AFCFDFD
          A87FE0A6DFB28FECA6F75A478DBE20697E21F1C44033681A3DCC7717708CF59B
          0DB61FA3904F615EDE41C378FCD710B0996D1955A8FA4537F37D979BD0F3B32C
          DF0B83A7EDB1551423DDBB7DDDDF923F41B3EE3F5A33EE3F5AFC4CF879FF0005
          CCFD9C7E276A274BF0BF817C7171783F85AEAD467E9F3D49F1ABFE0B85F013E0
          5D8FDB7C5FF0C7E2348D824470CF6DB8FE6F5FA1BF0138BFDB2A0F032E77D2F1
          FF00E48F9DFF00888593727B4FAC2E5EFAFF0091FB56D3056DA413C678CD7F28
          5FF0595FDA46F64B9F8B17F67A830D3F4789BC3DA622BE0215C99A41FED191CF
          3E8AA3B57ED8FEC27FB7EE97FB7C781F54F89DE0FF00829F12BE197C38129B6D
          2756F11B411A78825538736688C5A48D08C1931B490402706BF91DFF0082AEF8
          8A6BAD3BE20E90D297BC6D7F5132A83CEFF3DC1FE95FC89F486A58BCB29472EC
          4AE4973DA4AE9EAADA5D36B777DF747FA1FF00407C930B9A67589CD23EF3A54D
          727FDBEDDDA4FCA36F47E677DFF040FF00037FC27DF0F35FD52F8B4D3EA7E33B
          DBABB73C994C69146B93EC37607FB46BFB87F07F8674EF0C68961A6D85BC3046
          9181C2E0F415FC5AFF00C1B4FE22B49BC31F10BC252B28BBD27C4ED29527948E
          E2146538F731483F0AFEDD236CC719047DD1EB5F77C2338CB2BA0E1B72A3F9C7
          C68A3569F15E3E15BE2F68F7F3B35F8583AF5C7D6BE25FDBB7F663F0E7ED3DFB
          3C7C51F871A869D6D2EA777A54CD61315E60BC452F0C83DC3AA7E19AFB773EE3
          F5AAF710ACF1C88CC36B0C1079CD7B18DC1D3C4519D0AAAF19269AF26ACFF03E
          1325CE713976328E6183972D5A528CE2D74945DD3FBD23FCA57E3DFC37D43C25
          03C77F6AD6972BB924474FB8EA70C307D0822BFB1AFF0083743F6BCD57E2F7EC
          93A67C2FF176AB26A3AE7826F65F0E44F2BE64FB1280F6EA7B9DA8FB327B20F4
          AFC44FF82B7FC29D33C13E2DF8B8B6B6896F05B788AFC20C636A349BC01FF7D1
          AED7FE0DA6F12EA5A6F89BE3C79723AD8CFAED846BFDD69040FBBF42B5FCB9E0
          961EB60B36AD83BDD2E64FE47FAC3F4E4CD3099DF086133749294F9271EEB9B4
          6BE7167F5C7FB657C5393C2DE15D76D2DEE194DB591988071F3B2F1FD2BF98CF
          D8960BFF008ABFB497C65D62FDE6B89EEAFAC6D0B3127118691C8FA640AFDB2F
          DB9F56B8BF93E2158EF7C34488A0761E5291F857E3CFFC132DA1D13F69BF1AE8
          F739125C9B5BC453C676C8CA7FF4215FC1DF462E249E6BE3DE7B99E64FF7B2C4
          57A31BFD9852E6A708AF94169DDF99FC2DC5193AC1F0950853FB4A336FBDECCF
          EBB7E12F81F4BF06784B4AB4B2B58A294C4A5881CF4AF5438FF67F5ACBD1581D
          2AC0A918F2D71F956AE7DC7EB5FECEA7A1FCE87977C54F87DA578FBC2BAB6917
          F6F14C658595495E54E3835FCD6FED27F0D5F46D2FC4DA5CD0ED9AD1E5889C72
          769E3FA1AFEA7E5CB215041FCEBF10FF006EFF000ADBE99ADFC41B858C24325A
          8B93C7525393F98AFF002E7F69FF000DD3864B95712534955A388549BEAE1563
          295BE5282D3CDF99FBD780D983FAD623032F8670E6F9C5A5F93FC0F9B7FE08D9
          FB485FDA5F7C45F80FADEA05ECB4EBB8F50D311CFF00AA867243A0C9E8244CFF
          00C0AB0FFE0B49F196E6D356F1769315E94B7D0F448EDAD5037DD9A71E648D8F
          5204633E83DEBF363FE09C7E2DB8B2FDB3BC602C26658174B5498E7819B81B47
          D786AECBFE0BE37BE2EF06FC6BD0E59E1962F06F8C7C3D05E5A5C6D3B24B9B7F
          DCCD1EEE85D418DB1D70C0D7FAD5FB2D28FF0069D1CBA9E35FEF234AA28DF77C
          AD6DE7C975E899FCB9F49EA9F55A35A74BE1E78DEDE7A6BF3B7CCF0BFF008205
          5B45E3DD5BE31E9D7F379B3B78BD2EE752DCB06806DCF723E5900AFEEBBC27A0
          69DA0E89A759595AC102AC63EEAF26BFCE9FFE087DF1C34DF81FFB6E0F037892
          FA1D3FC3BE36805A5B4B2B8548F52889785493D0C8A6441EAC40EF5FE8CFE1FB
          F8EFF4AB19A2756530A1CE4FA57E87E3FF000ED7CBB8A310ABA76AB69C5F74D2
          5A7A34D1E7F86F9953C564F49D37F0AE57E4FF00E1B53CFBE307C29F0AFC5BF0
          57893C17E28D2ACF53D2751B19AC6E6275FF005B14885597F23D7B57F98DFED9
          7F01359F80BE27F1D782B564656D1F57BCD3524607F78914ACAADF8A853F8D7F
          A9ADC1C32B96E3A7B1AFF391FF0082EF7C49F0DDC7C7EF8AFA3786248B51BFB8
          F11DCC11456DFBC6965CAA6D503AB17C8C7735FB57D0F78AEAE0A59B616A3FDC
          4A9466FB2945B4BCAED49AF3B23E0FC6BCA215FEA9563FC4536979A6937F75BF
          13F7FBFE0DB2F8FDAC78BBF62FF08781F5FBE7BD8B43D5753D1EC8C849296C93
          968D17D9448507B01E95FBF9FB52BFFC63AFC6239C6740BA1D7D52BF9D4FF820
          E7C13F107C12F833F0D7C1BAD4125AF897ECF26A9AC479CF937770FE64919F52
          9B910FBA9AFE893F6AA62BFB387C6139048D06E3FF0041AFE37F13B1F4F13531
          F8AA5F0CFDA35E9667E899AD0951E1FAB4E7BAA32FFD219FE6FDFF0005406FF8
          B857A0919119FEBFE35FDB87FC123B8F811F0DCE7AF8734D3FF92A95FC43FF00
          C14EDCBFC43BF63FDC3FCEBFB78FF82471FF008B0FF0D8E7FE65BD33FF004952
          BF987E8E8FF7588F5FD59FCF3F455BFD5F157EFF00AB3C57FE0B2DF19AF74382
          0F07DBDD3C561A468D2EAAE8AD80D7336E446FAAA2B63FDE35F81BFF000440D1
          E4F891E3BF8F1A95FEEB9BCBFF0014DAACCEDC974588951F4CB357E9CFFC16FA
          F9ED7E227C45B199CEFB8F0FD8BC4BEAB8907E5C357E1EFF00C11A2C34AF1F7C
          5EF8C5F04F5FF88DF13FC05657B15BEAE57C2DAA269D717C88C62914DC794D20
          03727DC65383E95D193E6D2971957E75CD25CD14AF6D9597A6C7FBD1C55C1F42
          1E0AE0BD9BE4A6D53A93695F59494A4ECAD769B7F76F63FB75F8B5FB69FEC85F
          B13F826DADBE2BFC53F0D7877598EDF7A68B667ED7A8DC90380B6F16586718CB
          6D1EF5F917E37FF82A8FEDD1FB60ADEF87BFE09F1FB376A9E16F0936E85FC73E
          2848ADEDA143C0904D718B7040E76A79CC38E2BDABC39FF04E2FD8E3E18788A2
          F19784FE056A9F137C64D891752F19EAD75AE1593FE7A04B8631EFCF3B8A935F
          6BE85F063E2378DD2DE0D458E87A34602C5696F188A1890745541C28FA57EA55
          727CE31D27F5AAEA8D3FE5A5ACBE751A4D7FDBA91FC9B85E31E0CC8609E4F819
          63B13FF3F715654E2FBC70F0934D7FD7C9CFD11FCA4F8DBFE08E7A9F8DFC5D7B
          E36FDA7BE376A9F19FC7DA9DE497FA969BE1C2F0DAC972EC5A4F36ED80925CB1
          3F71507A6062BF7ABFE09A3FB25C3FB37A5AE8FF000E7E1E69BF0F3C2D210F34
          36506C370C0101E676CB48D8EEC49AFD63F047ECC7E0DF0E6CB9D46D96FEEC73
          97F9B9AFA2F4DD0B49D22348F4FB2B6B651D36AF4AFA2C9B87B0780A6A96160A
          297CDBF57D59F9CF1B78939D711621E2336AEE6DDB4DA292D928AD125D11A301
          FDD4593C8519CFD2A6CFB8FD69071FC43F5A5CFB8FD6BDA3E1833EE3F5A42723
          A83F9D2E7DC7EB484E47507F3A005CF4E474F7AFCC0FF82B6FECA27F6B6FD907
          C75E0AD1ED966F1DE94C9E21F0F3EDC917B6F93E503D84A86488FF00BC3D2BF4
          FF003D391D3DEA96A1670DF5BCF6D2AAB0752B9C74AF6F86B8871594E614733C
          0CB96AD1946717E717757EEBA35D5687066996D1C661AA61310AF09A69FA33FC
          96BC55A4CE66BFD3752B59AC751864782E20990ABC3229219594F2181041AFE9
          E3FE0DDFFF00828658F83EF07EC45F16B5B8ECDDE67B9F02DEDD4BB52746E64D
          3C93C6E56DCF1F3D1997A8AC1FF82D7FFC12DBC49E1DF1B78A3F6A2F80BE1E6B
          DB3BB2D77E28D06D22F99DC7DEBDB741D4903322752497193907F987D2B5B9AD
          352B2D4B4AD46F342D76D2E52E6DEE6076867B59E36055D5860ABA90083C608E
          D5FEA96635B21F15386BF77350AAD276D39A954F35D57FE9517DF6FE42C2D3CC
          784334F7973417DD38FF009F7ECCFF005C88271300CAD95233F4AB19F71FAD7F
          2B5FF04C1FF82F5785BC4FA37877E097EDB1AB8F0BF8CA048ED34CF1C30FF41D
          5C0C285BFE8609BA1F33051F927691CFF517A06BFA2F89B49B1D7BC3FABE9BAD
          E8B751ACD6F776970B3433A1190C8E84861CF515FE66F1EF86B9C70D62DE1336
          A4E0FECCB784D778CB66BF15B3499FD53C37C5781CD68AAD839A9775D63E4D6E
          8BB7F6169A9DA5DD85F46B3DA4F1B452A124074208238F506BF3B7E247EC77FB
          3DE8E9729E0CFD997E0D1BC919A47B893C3B6D3492487ABB3BA12CD9EE4E6BF4
          7F77FB43F3351B242F8DE91377E466BE47099962684651A1525052DD26D5FD6C
          F53DBAD85A551A75229B5DD267F3AFFB487ECE7E27F0A7C0EF88DAA7863C17E0
          CF05225B4651F4ED260B664FDEAF428808AFE32FF6F9F1B78FDF5CD4346F106A
          B34F2C28C84863EB91FCABFD283F6EDB8B2D3FF655F8B37970F05BDBC769133B
          9E02813266BFCCD3FE0A1FE31D0359F883AECBA65D25C45971B94D7F7EFD1733
          39FF00AA9984AABFB6FDE7BDDC60AC99FCE9E2D61A2F37C3C60BECEABA6F23FB
          8DFF00823E6ADE2CD77F66EFD9DB48FB5CA9A3E9DE0CD2208635380A9F6643C0
          E9D589FA927BD7E03FFC16DBC01AEFC24FDACFE21F83B518258FC35AFAAF89B4
          4988216486727CD407A6E4992504761B7D6BFA1AFF00822980FF00B35FC1465C
          AFFC525A4F1FF6E71D771FF058BFD81E0FDB37E0A8BDF0E0D3F4EF8B1E1C12DE
          787EF6553B598AFCF6B2B81911CB85CF5DAC15BD6BFCB7F1AF846A67585AD1C3
          FF001A1394E3E7ABBAF9AFC51FE98FD0E7C63C2706713D2AF98E983C443D9547
          FC97B38CFF00EDD7A3FEEB93B36923F923FF00821BFC70B7F81FFB6CCDE05D66
          EE2B2D0FC6F629651348D851A840CD24239E32CAF2A7E55FE8CDA06A0351D2EC
          6ED1C157894FD0E0715FE4C9E2BD37C7BF07BE230B1D62CB59F877F143C3B7EB
          70825431CF637313E51D7D4646430E0D7FA0AFFC1243FE0A71F0C7F6D4F853A2
          785358D774CF0CFC7ED22C921D6F41B899637BC75DAA6EECC13FBC85CE1B0394
          2C41EC6BE27C20E2D8BC3FF65631F25583764F4BF75EA99FB27D347C1BA91C6A
          E2FC997B5C2D54BDA38FBCA2ECB967A5FDD92695F64D2BEE7ED067DC7EB51492
          15CE5C05EFD78A7F98338DEB9FA9AFCD4FF82887FC1423E13FEC67F0CFC45FDA
          5E29D1EEBE285E58CB1E93A4C73AB490B95C7DA2719CA4699DDCE0B6001D6BF6
          1CE337C3E030F2C4E2A4A308AEBD7C9776FA23F88F83F83F31CFB31A595E574D
          D4AD51D925D175949ECA315AB93D12D59FC8E7FC1743E2EE8B1F8BFE2D241776
          CED73E21BC0B87E36A10B9FCD4D7D79FF06FEFC05D67C03F0BBC1DA9EB1692DB
          6BDE23B87F125CC6E855A18E5DBE4AB7A1F2D5091EAC6BF263C0DFB3F7C48FDB
          FF00E31587C68F8A1A5EA7A6FC01B1BEF3ED22BE46493C5F73BF76D8908C9833
          F33C8786FBA33C9AFED8BF606F8112785F49B7F105FD9C56C4C2A23409B4228C
          60007B000015F99F85DC3956946AE67898F2CEB36D27BA4D9FD5BF4AFF001230
          B5DE1B8572CA8A7470718C2525B394525A773CE3F6F2F0FCDA1F89ADAFE48C8D
          3B56B0540D83B44A8BB4827D48C57E18FC31D44FC16FDAB3C0BE32958DBE8B75
          76BA6DD48C70A91CCC02B93FECB6D3F857F57DFB5AFC1D87E2DFC33D4B4C853C
          BD5204F3AD2655F9A1954E411EDD88F4AFE547E31E8B75A1EBD7FE11F1AD849A
          7EB70B950CE302400FDE43DC7A57F9A5E3E78659AF877E234B8EF29A4E583C55
          4555B4B48D5BDEA465DB9DA724FAA935BA67C1F0767B87CEB2459462256AB4D7
          2EBD636D1AF4D9F6763FB26F877AC47ADF84747BE4756CC2B900E70703D2BB8C
          FB8FD6BF1E3FE09B9FB5DE8BE2FF0008D87C24F1D6BD6F6BE36B14586D269E50
          06A9105C028C7FE5A0C60AF7EB5FB0A645C7DF51C67AD7FAB1C03C7D96712659
          4F35CAAA29D39AF9C5F58C96E9A7BDFD568D1FCF79BE515F035E587C42B497DC
          D775E40CC71C119ED5F85BFF000557F88BA4781BC3FE38D56F6EE28DD6C12DC6
          E6C7CC1338FF00C7ABF5E7E2E7C5EF06FC21F0A5FF0089BC57ACDA58C30C6592
          26906F95B1C0033FAD7F1DDFB6478FBC7DFF000503F8A17FA3786CEA7A47C11B
          3BCDBABEB192AB7B82375B5A9FF9692B7DDDDD1073D6BF893E9A143FD76C7657
          E1D64EFDA57F6F0C457B6AA953A719C529BDA329CA7749EB6836F46AFF00A4F8
          6B7CB956CE711EEC145C23FDE93B6DDEDD4E5BFE0915E05D63C49E2AF137C56B
          DB69836BFABA4562194E5ACE1661BFD833B37E0057F477FF00051AFD85FC2BFB
          67FECC50F80F592DA6F89F4E1FDA5A16AB1461A5D2EF0263781DE371F2BAF700
          7702BC1FFE09D1FB375BF866D34ABCB6D262D2F44B282282D2054C2C51A8C000
          7D2BF71E5B3B796D7EC92246D06DDA411C115FDFDE1B616AF0BE1F090CB26E13
          C3A5CB25A3BAD5BF9BFBD687E51C45ECF3275638A8F346A6EBC8FF00297FDA03
          F670FDA23F64EF1D4B6BE3EF05EBFA7369B7C24B1F1169A8F25ABBA3E639A39D
          07EEDB8070C14A9F5AFEAFBFE0965FF05E9B7F883E09F0FF00C23FDA37C19ACE
          A1E39D3A04B58BC4DA2ED913548D7E50D736CC434730E03321657396DA99C57E
          E5FC73FD8E7C2DF125AE350B282D60BB7C9242FDEF63C722BF1D7F6C4FD93BE2
          1FECFF00F03BC4BE32F02D8E9F6F043A8590BD786D91185B194025980071BB66
          73D89AFEC7C078BB85E35C461B23E24C146752A4A308D58CDD3707269736CF4D
          9B8DECDAF3D3F17C4705D5C8A956CC32BC438C629C9C1C79B99257B6FF008DAE
          7A8FEDFDFF0005B5F0F7C1CF006B3A27C1EF0CEAABE36BD85AD6DEFF00535556
          B667CA030DBAE59E42480BB8819EC6BF1ABE037FC136FC47278D344F8F9FB48C
          F278B3E3C6A2E350D37C3AE3CC87C2864F98BDC3127CDBD3BB9CFCB1F2305B91
          F8DFF1E7E2778E65F8EDE10F881AD05D62EBC3FAD59EA8B684E526FB3DC2C9B3
          D327663EB8AFEE83FE099DAF7C1FFDA83C06BF183C27E25B1F16485956F6DE47
          1F6AD3273F3186E23C9646CE79E8D8C8AF73C7BE13ADC1B94C32AC9283861AB6
          B5AAABC9CE4ACA3194BECC77B2D13BBDB5BF9BE1CE754F3AC64B198FA8A55A9F
          C10D1249EED2EAF63EA9FD8CFE000F86FE1EB5D4B528162BD74CE31839AF7AFD
          ABFF00E4DC3E32F23FE40573FF00A0D7BEDB4105AC290DBAA47128E00E38AF9B
          7F6CAD7B4AF0E7ECBBF1B75AD66F21B3D3A0D0A72EEED81CE001CF724818F7AF
          E11E269A596E224FF927FF00A4B3F52E319A594E2A4FFE7DCFFF004967F9C47F
          C14E3FE4A0DF7FB87F9D7F6F7FF048E3FF00161FE1B1CFFCCB7A67FE92A57F0D
          7FB7FF008C3C31E3CF8877D268F769709F30F97B9E78FA57F6FBFF000476F11F
          87FC45F003E1DDF683ACE9DA95A0D06C63CC53A314658154AB0CE43020820D7F
          3FFD1D6B4393111BEAF55E6AEF53F997E8AF8987B2C4C1BB3766BCD5DEC7C47F
          F0713780B57D0B4BF855F1AF4F8249341BB59BC31AAC8AA710CC732DB9623A06
          FDF2E4F703D6BF923FD9DFE326A5FB2E7ED3DF0E3E3B69B6D25E69DA66A01755
          B58C906F34E97E49D07FB5B0965FF6956BFD2BFF006CEFD9DFC2BFB537ECFDF1
          0BE0DF8B6DFCFD3355B4658E65505ECE753BA29E3FF6D1C0618F422BFCD7FF00
          6A0F807F10FF0065CF8B3E20F845F1634A96D353B599859DFAA1FB36AB6F9F92
          E2063D548DB91D436E1E86B83C53E1EC66579C2CFB07AC2766EDD24ADF834AFE
          B73FE8C3E885E21649C55C133E03CE5A55E8A9A49BFE2519F55E71727176D928
          33FD31BF672F17FC3CF8C7F0ABC1BF11FC1773A6EBFE1BD4EC62BCB2BA8F0CB2
          46EA181CFAF3823B106BE8C48E38942C4A91A8E8146057F9E1FF00C12D3FE0AD
          BF113F607BF3E01F1059EA5F137F678BEBA335C68A97005DE88EC46F9AC19C85
          C124B34248563920A939AFECFBE05FFC14DBF627FDA0B45B3D5BC13F1E7C25A6
          5F4A819B4CD72E469D7B6E7FBAF14C4723A7CA587A135FB3F09789996667495E
          A2A757AC64ECEFE57DD1FC47E32FD1638A385317374B0F2C4E0DBF72AD38B92B
          7453514DC24BADD24DFC2D9FA059F71FAD19F71FAD7C8BF10FF6E9FD90FE1469
          371ADF8FBF68FF00849A169F129724EB904AED819F95109627D80A8BF66AFDAB
          344FDABACEE7C71F0B3C25E2EB6F82E1B669BE29D6A16B15F11B0382F616CDFB
          D6B7E0FEFA40818FDD0C3E6AFB4A79AE1A73F654E6A52EC9A6FF0003F0CC4707
          66D470B2C76230F3A74569CD28B8C5BEC9CADCCFC95DF5B5AE7D7F9F71FAD19F
          71FAD1BBDC7EB467DC7EB5E81F3619F71FAD21391D41FCE973EE3F5A42723A83
          F9D002E7A723A7BD0C7AF23F5A33D391D3DE863D791FAD00701E3FF0168DE3DD
          1AEF4BD52D619B746554919E6BF957FF008285FF00C1117C13F1035AD63C7BF0
          F6CEE3E1DF8C2766924BBD3231F67BE6C939B8B61852DFEDAE1BD49AFEB9F3EE
          3F5ACAD4F46D375781ADEFEDA1B88C8C618135EEF0F71366194E2162F2EAD2A5
          35D53DD766B66BC9E879F9965586C652747150538BEFFA76F91FE5D5F12BF601
          FDB2BE0DDFDDAC1E08B5F88BA52F4B8D1EE50C8547768252920FC375765F007F
          6CEFF82827EC837896BF0CF55FDA0BE1CD9C6D99748974BB8BBD35DBBE6D2647
          87F1500FA1AFF443F883FB237C39F1A09641616F6D3B67955C1FCEBE48F117FC
          13A74F9AE259B4A95E1EE30DD7F5AFE8BCBFE9679E7D57EA599E1E962693DD4E
          3A3F54EEAFF23F33AFE0D65DED7DB616A4E94FA38BDBE7A3FBDB3F9EEF85DFF0
          70BFFC14396DED34ED6BF677D33E25DD8015A483C29A8C12CA7D488B2A0FD001
          5F61E83FF057DFF82B1FC4F8122F879FF04EFB8B7328DA9757F67716D0A13DF7
          5D4910C77AFD35D33F613F186952EDB0D5EF20008C10E7FC6BD5345FD903C5A8
          545FEBF7CCBDC33671F4AF91CC3C5FC9AACB9E9645868CBBBE76BFF01528AFD0
          F630FC0F8D8AE59E6355AFFB76FF007B5267E0B7C75D17FE0B3DFB5EF85F50F0
          EFC69F88FF0009FF00678F87D74B89F488F598DCCC320E1E0B012BC98C0E2493
          15F949FF000E4AB3D7FC4924DF11FE2E78DBE2148643E62E9366B650B9DDCFCC
          E5DF69E7DF9AFEE434AFD8F748255B59BC92E8770CD939AF66F0FF00ECE7F0EB
          4158BC9D2EDDDD7BB20E6BE7B37F1AB3BC4E1FEA586E4C3504EEA1460A11BF7E
          ADBF36DB3D3C0702E028D5F6F539AAD4FE69C9C9FF0097E07C35FF0004CFF843
          71F08FE1EF873C250D8DED9E8FA5E9F069D68B3316710C5188D3731FBC70A39C
          0FA57EAAEA3616DA9D9CD6777147342E3055867355F49D0F4AD1211069B6B05B
          46063E518AD7CFB8FD6BF289CDC9B94B767D8256D11F83DFF0507FF82537C25F
          DA4AD9B56D77C19677BAC46AE6DB51B4C437B6DECB32F257FD96C8AFE6DF5EFF
          0082397C5AF85DE308356F863F1BBC41E0CBCB69B7595D5DD9C89716841EA973
          6CEAEA40EE3935FE84B2C714C8D1CAB1C8846082335E6BE21F847E07F12167BF
          D22D4C84E73B6BE6B38E11CB71F2E7C4D24E5DD68FEF5667EA9C13E35F1470ED
          3F639563250A7FCAED28EBFDD92697CAD7EA7F25FF000EFE01FF00C14F356D1A
          DFC3FE2AFF0082A978D74BF0D18C42E96CB7D7172B1E31B44AEC8FD3FDAAF50F
          05FF00C131FF0067AD075A8BC5FF0013F56F88BFB5DFC4D695671378AE63FD9C
          27ED23DA29FDF90791E7338CFF000D7F484BFB32FC388E4DF1D84718CE7016BB
          7D0FE0EF81F416592D74BB77901CE596B8B07C0795D1A8AABA6E728ECE7294AD
          E8A4DA5F71EBE71F483E2BC661E7858E2151A753492A34E9D1E6FF0013A718C9
          FCD9F991F04FF646D53C45AED97883C53A75B5869D1054B7B48E258E28225E88
          88A02A28E0055000AFD6CF0DF87B4EF0CE996BA6E9B0456F146813E5180715AF
          6F6B6D688B1DBC51C483A019E2ACE7DC7EB5F5E91F8B4A4DBBB21B8863B98648
          2655922605483DC57E61FED83FB10786FE2ED95E6A36BA3C135DED628C83648A
          DEAAE3906BF50B3EE3F5A63AA480870AC3DF35C99865D87C5D1961B15053A725
          671924D35D9A774CBA35A74E4A74DB525B35A33F8E9F10FEC79F167E17F880BE
          85E22D5B4C8524CA1BA81A5F2F0782AEA411F51CD7DBBF0BFC55FB5E47A65BE9
          573FB50C7A5E9C8BB02C96B713CA83D01639CFFC0ABF7F75FF00867E0EF122BA
          EA9A4DB4C4F7C735E667F666F86E24F323D3A243FEED7E1B5BE8C7C1AEBCB118
          7C34A8CA5BFB2AB569A7EBC9347D7478F733E450A93534B6E68C65F9A3F1D3C4
          5F043C35E30986A9F173E227C47F8F5AB37CDFD9F7123DA58CADD96544632489
          FEC97C1EE2BD83E177ECA3A9F8DB5AD1E6BBD034EF0EF84AD36ADA69F6B02430
          4083F85235C2A8AFD57D1FE0978134731BC3A64123A9CE596BD46CB4EB2D3A25
          82CA086DE21D02AE2BF47E0AF0DB22E1CA32A3926161454B5934BDE93EF293BC
          A4FCDB678599E778BC634F1351CADB765E8968BE48E4BC09E08D1BC07A2DAE91
          A65BC50222056217193F8527C40F89FE00F859E1DBBF157C43F17689E10D0215
          25EE6F66D8B9F451D58FB004D677C59F891A27C24F01F89FE206BECCDA7E9D6E
          651129C35C49D1225F5666C0FC6BF86CFF00828BFEDABF1ABE3B7C5DF0A7C1DD
          3FC44B2FC42F146AB1E9765023136BA1C523721101C05440CCCDF79B6F519AFE
          95F0B7C2C967FED71B8BABEC7074359CED77A2BDA2B6BDB76F6ECCFCC78BB8C7
          FB3E70C2E1E1ED2BD4F85745ADAED9FBCDF1DBFE0BFF00FB36F807C432F827E0
          D7C3FF00885F1DFC6058C70456501B74B8607AA47B5A771DFEE0AF98BE247FC1
          433FE0A81FB49FC3EF12F84FC23FF04C88ADFC0DAD584D6538F13DE0B2134122
          95391732C2C0E0E436DE0E08E82B57F625FD9ABC2DF07743B1F0C7C0AF07433F
          8A248946B7E31BD884DAA6B9718FDE48F39198E3DD9DB147B55401C1E4D7EB56
          81FB3378DF568239FC43AE5E34CDCB066CE73EBCD7A589E3CE19CBEAF264995C
          67C8FDDA95E752526D7DAE584A118BEAACB431A5C359AE2617CC716E3CCB5853
          8C525E57719367F9E8FC7FFD9BBF6ABF82D7375E25F8D1F09350F0DE8F24E51A
          7835083508ADB9380EF048E5476CB71C75AB7FB2D7ED6FF1B3F63EF895A5FC5F
          F80FE2FBCF0F6B51055BFB1323358EB76C0E5A0BB87EEC887D7EF2F5041AFF00
          414F1B7EC11E15F156917B6BA9C106A8678CA4B1CAA1E3914F556439041C9E2B
          F911FF008299FF00C12AB53FD972EB50F8B3F0BB48B98FE1B3CFB354D3065869
          0CE7E59A1EA7C924E083C29C638AFEADF07BE925478A2BBE1FE29A50E6C47BB1
          76BC257DA2D4AED36F48BBBBBECED7FC7F8DFC2C9E554D665944E56A7AB5F695
          BAA692BA5D5595BCCFEC0FFE09D5FF000509F857FF000507F8236BF113C1C63D
          0BC6FA7B258F8A3C3B2BE66D1AFF00682429FE385FE66493B8E0E0820757FB74
          FECA3A0FED6BF0AA3F00F8CBE20FC45F06F846194DE5CDA787EE2384EA72A8FD
          D89CB2B6E453C85E99E7B57F0ABFF0445FDA4BC4FF00B3DFFC1473C25E0FB3D4
          EE2DFC23E36D2EFF0045D56D4BFEEE492189AE20971FDF4784A83FDD91857FA3
          6689A85978A741B2BD611DC4134618E7E95FC5DE3DF86983C9F3BC4650A3CD87
          96AA2FB3FB2FBD9DD79AB5CFD7F85F1B4F3FC992C7C54D4BDD92E92DB7F27D51
          FC2FFC57FF0082257C3B93C5D79FD89E21F8C77B68AC76BCF7509279EF88ABE8
          3FD9A7FE0937F09BC0DAEE917BE23F167ED149A75BCE8F2D858EBED6315DA83C
          C723C2AB2053D0ED20E3B8AFEC2A4F875E0F95DA49747B3773C93B6913E1CF83
          91B72E8F660761B7A57E130E07CA22928E1E2ADB687653F0EB22824A18582E5D
          AC8E13E0ABE956DE08D13C2FE1FD0DB45F0F585A4769696C5DDFCA8D46002EE4
          BB9C75662493C93DEBE19FDBEFFE09E7F0B7F6AAF07EA1A7F8AFC21A7EBC42B4
          9049B425C5A4B8FF00590CC3E646F5C1C1E84104D7EA4D869763A646B0D94114
          118EC055E6557043ED653C107A1AFA4AB86A73A6E94E29C5E966B4FB8FBFCAF3
          0AF82AD0C460E6E9D486B1945B8B4D6D66AD63FCEB3E3AFF00C111FE27780F5E
          BF6F86FF001226B5D34333476FACD933B2F3C0F3A2EBFF007C8AF0FF000F7FC1
          30BF6A05BA8ED350F8ADF0F34AB4242B48B69772B28F65D8BCFE35FE8F9E27F8
          51E0BF15ABFF006A6936923B0C676D7924DFB257C2A927338D22DFD7056BE1B1
          3E17E47565CD3A0BF13FA0B2AFA5871E6129AA74B1CF4EAE316FEFB1FC947EC9
          DFF04B3F80BE12F12695E2DF8E33F8ABF697F11C0E925BE957D07D93444901C8
          696DD4979C0FEE3B6C3DD4D7F56BF036DFC55A9596950C9A743E1FF0FDBC4B0D
          B58DB22C30DAC4800448E25C2A280A30A000057AC7873E007C3AF0DBACB65A35
          A24839042F4AF64B3B2B5B08961B58618500C00A315F519464383C053F6583A6
          A0BC97E67E49C69E21677C458858ACEB153AF35B733D17A2D97C913C6362A282
          3818EFCD499F71FAD19F71FAD19F71FAD7AE7C6867DC7EB484E47507F3A5CFB8
          FD6909C8EA0FE7400B9E9C8E9EF431EBC8FD68CF4E474F7A18F5E47EB40067DC
          7EB467DC7EB467DC7EB467DC7EB40084E7B8FD68FA301F9D2E7DC7EB467DC7EB
          4009F88CFAF347A6581A5CFB8FD68CFB8FD6801323AE573F8D1903A151F9D2E7
          DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7EB467DC7E
          B467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7EB467
          DC7EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7E
          B467DC7EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB401F9
          69FF00056CF1E3FC3AFD9AF4FF0010CF33C3A48F10DA4774C0E00CABECCFFC0C
          2D7F057E1DF88F657DFF000501F84DF10FC4D7AB0F87DB5DFB23CD29C2402657
          89589EC0332F3EF5FE8F3FB637C01F0BFED41FB3F7C4AF829E2E7B8874CD62C1
          A349E11996CE75F9A29E3CFF00123856C77E477AFF0033EFDAC3F674F8AFFB2B
          7C47D4FE1E7C69D027B578A7912CF57851BEC5AAC61BE59619718191825090CA
          4E30719AFEEEFA36E6191E6DC2F8BE17C554F67899CA5FF6F424B78F771774FF
          00EDD3F9E7C4EC3E3F059C52CDA8C1CE9251F934F67EAB63FD27FF00645F87BA
          2787BE1FE917F05B42D752C2A598A8CFDDFF00EBFF009CD7D8F8031B76AF1DAB
          F882FF008265FF00C17F2EFE03783FC3FF00063F69DF0BEB9F10FC1563025B69
          DE27D25D4EA5650A8DAA9756EE409D540003AB0703A86AFE913C03FF000584FF
          00827B7C40B182F6CBF68EF0C7871E450C6DF59866B39A23E8C1D719FC6BF9E3
          8B7C00E2BCA6B4A0F093AD4FA54A51738B5D1FBA9B8FA49268FD3326F12727C6
          C13559427D6327CAD3F9EFF23F4E31E8D8AF87BFE0A0DE17F02EA9FB25FC7EBF
          F1AC568BA643E18BE264703EF98FE519FF00782FE38AF24F885FF0586FF827BF
          C3AD3AEB51BEFDA3BC2BE2211C6641068C92DDCAF8CF0A15719E3B915F82BFB5
          97EDBBFB4CFF00C16083FC10FD8FBE1DEB7F0DBF66886ED64D77C65AFE62B59D
          57A3CD2AF0C1792B6D1176638DCCA38AD7813C2BCDE18EA39966B4E584C2519C
          673A955386916A568A959CA4ED68A8A7ABE865C41C5F829D09E1707355AB4D38
          C630F7B56ADADB4495F56CFC3EFF0082727C3CBDF1B7FC140A0F1F6930B3F867
          C19697323CE832AD7B70BE4C518238DDB5E5931D827BD7FA41FC063743E1CE82
          6E8B190C2BC9FA57F3B5FB0A7EC2BE0DF8412787FE1C7C3E86F354D2ED27375A
          AEB57316DB8D72F4FF00ACB8900E1413F7501215401EB5FD34F857468FC3FA16
          9DA545F2AC5185C7E15F3BE2E71CFF00AC59F57CCE3A424ED1FF000AD8F5F837
          87BFB2F2EA7847F125AFA9D167DC7EB467DC7EB467DC7EB467DC7EB5F9A9F501
          9F71FAD19F71FAD359C2AB3165500649C9E2BF9F8D4BFE0A7DFB6A7ED4FF001A
          3E2CFC35FF008268FECD9E01F1FF00C3DF03EA0FA56AFE38F19EAAD6F67A8DDA
          92196D23478C05CAB8196766501B6AE715F45C3FC2F8ACC9CDD0E58C29A4E529
          4946314DD95E4ECB57B2DD9E5E659BD1C2F2AA977293B24936DFA247F4139F71
          FAD19F71FAD7E487FC13F7FE0A33E3AFDA43E237C67FD983F695F85167F027F6
          B0F006D9B58D2AD2E8CFA7EA768C576DCDB3312C07CE8769660CAEAE1B0703E6
          DD7BFE0A83FB62FED41F1BBE29FC21FF008265FECE3E06F891E10F045F3697E2
          0F1D78CB536B7D3EE2F0123C9B45578C7547009672C0676A0209F629F87599BC
          554C2CD461ECD294A729C5535195B965CF7E56A57F76CDDFA2D0E27C4F84F630
          AB16DF3B69249B95D6EB977BAEA7F4039F71FAD359CAAB104671EF5F8DBFB15F
          FC14B7E277C53FDA2BC59FB12FED8BF05ECFF677FDAAB4CD3DF56B186C6F5AE7
          4AF1359A72EF66ED921829DE06E70CA8E411B48AAFFB6BFF00C1497E30FC3FFD
          A47C27FB0E7EC57F0674BF8F1FB52EA3A72EB3A91D52F0DBE95E1BB02321EE8A
          B29DCCB86C974550C9F78B85AC5787F9A3C7FF0067F22E6E5E7E6E68F27B3B5F
          9F9EFCBC9E77F2DCA5C4D83FABFD6799DAFCB6B3E6E6BDB97977BF976D4FB97F
          692FDB4FE0CFECA5AF7C16F0E7C5CBCF105A6A7E3EF1141E17F0F0B0D3DEE565
          BF95D11565607F76B9917E635F59C7217193803F1AFE2E7FE0A0BFB43FED83E3
          5FDA3FFE09C7F057F6D4FD9FBC35F097E25E93F17743D774DD6BC35A8FDAF46D
          7EC9EFADA22B192CE5278DF1B9771E194E17BFF47FFF00050EFDBF3C23FB027C
          2BF0E78AAF7C23AAFC4CF893E25D4D741F0878574F9BCBB8D6EF8E38DFB58AC6
          BBD324293975039615F419DF8695A8D2CBE8E117B4C46294FE1946517695A2E2
          D68972EADB7A6B7B58F332FE2A8549622A567CB4A972EE9A6AEAEEEB7BDF4B1F
          A179F71FAD21391D41FCEBF9CEF1A7FC1437FE0ADDFB317852CBF685FDAB7F62
          BF8472FECE692432EBD6DE14D699F5BF0F5A49FF002DA4469A45F9720B065C67
          82D1E6BF797E127C55F06FC6EF861E03F8BBF0FF00594D67C13E23D2EDB57D32
          E4706482540EB91D9867041E410457C9E7DC238BCBE942BD5709D293694A138C
          E3CCB78B716ECD5F67EAAE8F6F2ECEE8E2672A714E328EB69271767B3D7747A6
          E7A723A7BD0C7AF23F5A33D391D3DE863D791FAD7CB9EB867DC7EB467DC7EB46
          7DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7EB467DC7
          EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7EB46
          7DC7EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB40067DC7
          EB467DC7EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB4006
          7DC7EB467DC7EB467DC7EB467DC7EB40067DC7EB467DC7EB467DC7EB467DC7EB
          40067DC7EB467DC7EB467DC7EB467DC7EB4011C88922BAB8560460D7E797ED65
          FB127817E3F687A8D96B1E19D0B5EB6994992D6FED5268A43EA5581E7DC735FA
          239F71FAD21C1EA15BF3ABA7525092941B4D6A9AD1AF46294535692BA3F8C9F8
          9DFF000447F865A76B37375A4F80758F0F26F63B348BE78A21CFF0A306503E80
          5799E9BFF048DF850970B1EB917C647894F3145A8A229FF8108B35FDB6DDE8BA
          55FE7ED7636F367AE56B025F879E109793A35906EB9DB5FA5E5FE34F16E168FB
          0C3E635543B73B7F99F2B89E05C96B4FDA54C2C1CBFC2BFE18FE5CBE107FC135
          7F659F04DDD95EDBFECD10FC42D5E360C92F8B6E66D5630C31CFD9E43E51FC50
          D7EB17843E0478E7C5F6BA6E91756161E15F0ADBA88E0D3EC6D52DADEDD3A054
          8A301540F402BF4E2D3C1BE19B221ADF4AB3461DF06BA18A08601B61448D7D00
          AF8ECF38A332CCE7ED331AF3AAFF00BF272B7A5DE87B797E5185C247970B4E30
          5E492FC8F24F85DF08BC3FF0E34F861B2B4845D81CB8AF62CFB8FD68CFB8FD68
          CFB8FD6BC23D00CFB8FD68CFB8FD68CFB8FD68CFB8FD68038FF88765AA6A9E00
          F1CE99A2330D6AE347BD82CF6920F9ED03AA60FAEE22BF037FE0DCBD7BC3717E
          C8FF00187E1CCD2DA5A7C4FD17E25EB07C4567211F69CC8B0F972C8A7E6C1F2E
          45E7BA37AD7F442C4956191D3DEBF1FF00E3D7FC11AFE017C58F8C7E20F8FBF0
          CFE23FC68FD97BE28EB85DFC4577E02D68D8C1AD3B021A5960DA42CAD93B9908
          DD92482C493FA0F0AE7181FECEC56518F9BA51ACE125351E6B4A9F369249A766
          A4F557B34B43E6B38C0E23EB34B19868A938292716ED752B6A9D9EAADF71EFDE
          1FFDAFBF67FF001EFED5DF1BFF0064AF875A66A979F1F742D09751D7B5AB5D26
          16B11BA1411C525E23EF6953CC8D0C6E0636E074AFCC6FF836CB5FF0DE97FB28
          FC63F84BA95D5B69BF17F40F883A81F13699712017B148D1C4AB248A7E665CC4
          F1EFE9BA3619E2BF543F62EFF827D7C07FD863C33E29D3BE12D9EBBADF8CBC41
          71F6BF1178A3C417A6F755D6E519DA259880046B93845503249396249F9CFF00
          683FF8238FECFBF19BE31EA7FB41FC3EF881F18FF660F8C7A983FDB7AAF80358
          FB0A6B24E32F3C24102538E5D0AE79241249AF73099D6451A18AC9E15270A157
          D93551C799F3D3BDDCA09DD465CCEC936E365B9E755C0662EA51C738C5D48F3A
          704ECB9656EB6D5AB6AEDA9F117ED49AEE89F107FE0E0AFD86BC3BF0EEEEDB57
          F13F85BC257D278ABEC98636517977726D9997A1F2DD460E3EFA8FE21567F66B
          D4F4DF87FF00F0707FEDD1A37C476B7D2FC4BE2FF08E9375E0E9AED829D42D63
          B3B2578EDCB63271091B573CC0FF00DD35FA77FB197FC1347F678FD88AF3C55E
          2CF8751F8ABC6FF1735E52BAE78D3C537E6FB56BF42C18C424202C7116018AA8
          05881B8B6061DFB697FC1357F67FFDB7AEBC2BE2AF1F9F15F817E2D681FF0020
          1F19F85EFDACB55D39776EF2F7F2AF1E4F46191CED2B935EAAE3ACAFDAACB79A
          5F55FAB7D5FDA72FBD7E7F6BCFC97F879BDDE5BDF975DF438DF0FE2F97EB565E
          D7DAFB4E5BE96E5E5E5E6B6F6D6F6B5CFCC2FF0082E978B7C10FF1DFFE0963E0
          717DA7CBF10FFE17368FA98B61B5A78F4FFB65BC6CC7BAA990A01EA54FA579AF
          FC17F743D725FDA8BFE097BE2393E226A1F07BC28BAF6B3A72F8C63B65B88FC3
          37F2CBA718E728E3629C20605B8C46C7F84D7DB5E1EFF82127ECC1078C3C09F1
          4BE20FC52FDA33E2C7C65D03C4B61E26B7F15EB7E2459EEE77B4916486D1D648
          997ECA1D43151862DFC58E2BF4ABF69FFD94FE0AFED85F0A754F837F1E3C216F
          E2EF06DCB095312B43736170BF727B6997E68E55C9C11C1C9041048AE8CB38FB
          29CAF1196C70B39D5861E35A339725BF8BCC9B8464DA692968A56BDB54AE462F
          873198BA78AF6A942555C1C55EFF00059D9B4BADB747E25FED3BFB167ED21E0F
          FD9F3E2578A3F693FF0082C3FC486F802DA4C89E20379E12B19ADEEECA4014A0
          48D4BC9BC300123049CF19AFD39FF825D782BE1DFC3AFD83BF677F087C2AF895
          AA7C5DF86D6FA6DE4DA37892FB4C9B4E9754B69AFEE6646FB34CAAF1AA897628
          20655148E08AF8B34FFF008206FC00BE7F0E787BE28FED17FB577C65F841A45C
          2DC58782B5CF1493A6A9539547088095009042ED247715FB79E18F0BE83E09F0
          DE85E10F0968DA6E81E19D32D22B1D3EC6D6311C3676F1A0548E351C2AAAA800
          57CE71C714E1F1197430386C43AAF9F9DDA8C28C1251718E914A4E5ABBBBD92D
          15F73D2C8726AB4F14F13529F27BBCAAF394DEE9BD5E8969EA74F8E4F5E9EB43
          0E0F5FCE8A2BF283ECC5C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0
          F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F
          7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7
          FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7F
          CE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FC
          E8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE
          8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE8C0F7FCE8A2800C0F7FCE9
          8E303BD145007FFFD9}
        Properties.Caption = 'code.google.com'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 4
        OnClick = googlecodelogoClick
        Height = 154
        Width = 361
      end
      object tyrantlogo: TcxImage
        Left = 584
        Top = 17
        Cursor = crHandPoint
        Hint = 'tyrant'
        Anchors = [akTop, akRight]
        ParentShowHint = False
        Picture.Data = {
          0A544A504547496D61676559320000FFD8FFE000104A46494600010101004800
          480000FFE20BF84943435F50524F46494C4500010100000BE800000000020000
          006D6E74725247422058595A2007D90003001B00150024001F61637370000000
          000000000000000000000000000000000100000000000000000000F6D6000100
          000000D32D0000000029F83DDEAFF255AE7842FAE4CA83390D00000000000000
          0000000000000000000000000000000000000000000000001064657363000001
          44000000796258595A000001C00000001462545243000001D40000080C646D64
          64000009E0000000886758595A00000A680000001467545243000001D4000008
          0C6C756D6900000A7C000000146D65617300000A9000000024626B707400000A
          B4000000147258595A00000AC80000001472545243000001D40000080C746563
          6800000ADC0000000C7675656400000AE8000000877774707400000B70000000
          146370727400000B84000000376368616400000BBC0000002C64657363000000
          000000001F735247422049454336313936362D322D3120626C61636B20736361
          6C65640000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000058595A2000000000000024
          A000000F840000B6CF63757276000000000000040000000005000A000F001400
          19001E00230028002D00320037003B00400045004A004F00540059005E006300
          68006D00720077007C00810086008B00900095009A009F00A400A900AE00B200
          B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB0101010701
          0D01130119011F0125012B01320138013E0145014C0152015901600167016E01
          75017C0183018B0192019A01A101A901B101B901C101C901D101D901E101E901
          F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A02
          84028E029802A202AC02B602C102CB02D502E002EB02F50300030B0316032103
          2D03380343034F035A03660372037E038A039603A203AE03BA03C703D303E003
          EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604
          C404D304E104F004FE050D051C052B053A05490558056705770586059605A605
          B505C505D505E505F6060606160627063706480659066A067B068C069D06AF06
          C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207
          E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB091009
          25093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A
          810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10B
          F90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D
          8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F
          410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511
          131131114F116D118C11AA11C911E81207122612451264128412A312C312E313
          03132313431363138313A413C513E5140614271449146A148B14AD14CE14F015
          12153415561578159B15BD15E0160316261649166C168F16B216D616FA171D17
          411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B19
          9119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C
          021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E
          941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C21
          48217521A121CE21FB22272255228222AF22DD230A23382366239423C223F024
          1F244D247C24AB24DA250925382568259725C725F726272657268726B726E827
          182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A
          352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D
          762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430
          DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B34
          65349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738
          143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3B
          E83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23F
          E24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044
          034447448A44CE45124555459A45DE4622466746AB46F04735477B47C0480548
          4B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724C
          BA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB510651
          50519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C256
          0F565C56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65A
          F55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB360
          05605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E965
          3D659265E7663D669266E8673D679367E9683F689668EC6943699A69F16A486A
          9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD170
          2B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575
          E1763E769B76F8775677B37811786E78CC792A798979E77A467AA57B047B637B
          C27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81
          CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F88
          04886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E
          668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94
          F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429B
          AF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A2
          96A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9
          A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0
          EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B8
          59B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABF
          F5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7
          BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CF
          B8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7
          E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE0
          36E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8
          BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F1
          72F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA
          57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF6465736300000000000000
          2E4945432036313936362D322D312044656661756C742052474220436F6C6F75
          72205370616365202D2073524742000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000058595A
          2000000000000062990000B785000018DA58595A200000000000000000005000
          00000000006D6561730000000000000001000000000000000000000000000000
          00000000000000000258595A20000000000000031600000333000002A458595A
          200000000000006FA2000038F500000390736967200000000043525420646573
          63000000000000002D5265666572656E63652056696577696E6720436F6E6469
          74696F6E20696E204945432036313936362D322D310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000058595A20000000000000F6D6000100000000D32D74657874000000
          00436F7079726967687420496E7465726E6174696F6E616C20436F6C6F722043
          6F6E736F727469756D2C20323030390000736633320000000000010C44000005
          DFFFFFF326000007940000FD8FFFFFFBA1FFFFFDA2000003DB0000C075FFDB00
          43000503040404030504040405050506070C08070707070F0B0B090C110F1212
          110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E241C1E
          1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1EFFC000110800CB00B403012200021101031101FFC4001C0000
          010403010000000000000000000000050004060701020308FFC4004F10000103
          030302040305040605060F000001020304000511061221133107415161142271
          32428191A1081523B1165272A2C1D124254492B2436293A3D2E1263334454653
          636473748294B3B4F0FFC4001A01000203010100000000000000000000000001
          0203040506FFC4002E1100020201040102050402030100000000000102110304
          12213141132251617181F03291B1D1A1C1051423E1FFDA000C03010002110311
          003F00F1952A54A80152A54A80152A54A80152AC8493488C50062956DB4D6314
          018A559C52C514062956DB4FB52093EA28035A559C7B8A58A00C52ACE0D676FB
          8A00D69567158A0054A952A0054A952A00C8EF4674F584DDDA92F2A74786D47D
          814B7828E4AB380300FA1A0B532D1085AF4E5D7A685AD5F131B094A4A89FB79E
          073401C4E8E607FE91DB7FDC73FECD68AD20907E5BF5B55FEFFF00D9A39F0F2B
          27FD1A4FFD02FF00CAB9AB82410411C10463153514C00A7473EA4294CDDAD8E1
          4E323AA53DFDC8AE4BD2929B42946E36E52C038421D2A2A3E838A9021A75C4EE
          6D8756338CA1A5280FC857465878496B7B0F2125479534A48EC7CC8C50D24046
          FC39B135A9B5CD9AC0F2DD6DB9F31B614A6C654013CE3DEB6F10ED10EC9AE2F5
          67B7974C78735C61AEA9CA8849C727CCD12F04643113C55D372E4BC865966721
          C5AD6AC00067393E55742D9F06ED77EBA5AB5387AF6ABF4B7D52EF4D9CA2DE16
          A25A5208E558CE544562CB9BD3C9CF546BC1A69E783708B75DFD0AE35EF86716
          DFA4FC3A9FA7552264FD516D5C87995AC001D42B04249C0039C63DA98B7E0878
          98B7BA29D32E877A45DE997DB0AD80649C6EC8E01EF570EA2D3BA7636B9F0A74
          75E2F0C4AB3DB4BE97A533277B6E80A0B6D4003F205E1346FC3F9966BD7ED257
          BD611F574594A911A6B688521A31CB6D046C48C938E07E7DEA97AB692AFEFC96
          2D24A49B516FF3F3E279B34F7869ACAFF69FDEB6AB417E21714D070BC8402A49
          01406E23B66B1ADFC37D63A2E0459FA8ED061C594A2861D0F21C4AD439232826
          AEC83374531FB2A59E26AB6E6496C6A090A0CDBA5210FB6BDCB00A81E76633E5
          E940BF68E36AB3685D27A474D4AF8BD37D1373B74953C1C5A8BA09712E798502
          781C607BD4E1A993C8A2D7175D7CBEA45E9BDBBABF3F65C7C1F43DD73FB3DC48
          FA02C170D297633351CAB73770996B79D4EF5B4B030A6863B027049E299EA7F0
          4B4D58BC09B86AC46A272E7A8A03ECB5323B04066238B5005A503C92011CF9F9
          714F3F695BDCAB14BF0D6E56394E4494D6976905C69E049C800A4E0F623C8F91
          AE3A09C137F646D79F12FA14FAEFB19D01C57CEB39467EBDEA1EAE5D919B9716
          BF9FE08AC69BAAE480C8F04BC49610CA9CD3E12242429ACCB67E6CF6FBD426D7
          E196B5BA5E2759E0595C7EE1017D390C075014956338193857E19AF59F8A5A52
          15D2ED09769D15A16FD11BB6B2D09932FAA8AE8504FD9084AB0003E7E75E5E62
          1DF349F8AF0EC93DD683B12E8C2DE4C4921E6C0DE9570B1DF09E334B0EAE7953
          E55AFCF0CBBFEA462D6E8C95FC9F7F74BFC581F50F879AC74F212BBE58A4C0DE
          A4A521DDA0924E0719E39C0E68C33E0B7890EA23293A7941328E182A92D0EA1F
          F9A0AB27F0A947ED4529572F1F2F11E14A75C86FAD823A6E2969C1427711F4F4
          AB1B5F7F43A678ADA1E2D9B57262C3D36DC28F1232E392859DC144EF4ABCF232
          4E31F81A72D54E308B75CABE98968DCBF4C5BFCE7C78FDFE479B6768DD4B0DFB
          CB2FDA646FB22F65CB680A118E71F311DB9E2A3EA18AF563D69837CD5FE3A436
          9F805F94C85C1C4A01871C2A07E55670A209FCF35E76D4DA36FD608C24DD23B0
          DB654139449438727D4249C569C59D4DB57C99F369E58FC32374AB278358ABCC
          E2A54A95006477A3BA4357EA5D2131D99A66F52ED521D4042DC8EBDA543D2816
          2962802D9D2BE35F8AB2752DAE3C9D7778758725B685A14E0C2925401078F434
          36E4E2DEB9CC756A2A52E438493E7F31A85695586B52DB1C5764CB68FF007854
          D2632A4CD9009E43CBF3FF009C6A51E180497AFB5A691D1D098D39A92E16B65C
          9F2372185E02B0868F3C7A93F99A3979D5FAD245B9FB65F7C56BE3C87E381258
          F84EA2085242881CFA1EFC5575ACD453A7EDACE0604A92BFCD2D0FF0A3F7F6D4
          FDCDD091CA9A69239C73D24D2A56041EF56CFDD97D7AD8991D5E9B89425CDA53
          B8100838F2EF52895A5ADF1A4390DFD53283AD2FA6E244151485670707772334
          C759409AEEBD90A6E1C85A0C86C6E4B4483F2A3CF1521D48D1FE935C80E7FD3D
          638FFE252A4FB2519CA2BDAE80D1F4E25965F132F8FC64B52DC8ED86E3A96145
          BC6547E6E3BD6576180A7BABFD28921C1F78C15E7F3DD476F281F0CF048CFF00
          AE26E78F428A2B638BA119D3F1A66A56F592E63EF3AD81698ECADA0118C67773
          9E7B52DB15DA27EB656AB73FDDFF006431DB0433BC8D52EAB77706139CFEB4DA
          3E9D90B69F6A6DD90C4460A36290953A1C2BCE0A4718FB241CE318A976AF8162
          8EEC17B4E2AF2614B8C5D09BAB6843C9216A49042780329E3EB5C16C11A614AC
          775C7FD5523FCA9ED8D702965C92EDBE7E6FFB23B26C51A421097B51BAE25030
          80A88AE3F5A4DD98371CC567532911C9DE51F0EE0CABD702A59A622E9236F992
          B541D47FC271B4B42D2CB4E677673B82F91F67CAB7D431B4839686A76974EA76
          D424745D4DDD96900FCB9CA767F8D1507EDA25EB655272DCEFEAFA212EC0B80B
          8C78CD5E1D7597DC29EB02B182064E524FA67EB5DE25ABE1DF3223EA2750EABE
          F88CACFF003A29023154C8448FF6C50FFA851AEFA758B5AEE2D7EFB5CF4C0085
          2DD309292EE0249F97771E547A7057486B559ED3DEED72B97C7D39E006AB428B
          AA7FFA44E1715DD7D05EE3F8E698CEB63F01953F1AE9D709F99490952158F33C
          F7A9FB72FC2EB831263591CD5EE4FE82D6D2A6223A1A46D19513B0E4F0318F7A
          8BCD6B302595630233A79FEC9A6A31AE88FAF9572A4FF77FD9C176E95B7A6BD4
          2E2481F327A2AC034D5ED3E9733BEF9BFD72C2EA5F6ABD785929A8E2E2BD6899
          EEED0F08EDC6E9059E3E5DC738FAF34C7E1E1A2F05A70CAF82127629494A4BBD
          3DD8E0671BB1F8528C21E10E79F364FD726FEADBFE59163A65094A946EB1D581
          C04B4B249F4EDC54715DF156BDDAEFE1536C496E0B9AD44C46435D76A316F783
          C6EC1CE0E31C5552AE4934DD149AD2ACE295203AEDF6A5B7DA9CF4BDBF5A5D2F
          6A00E960F96FB015E925B3FDE1563498F994F13DFA8A3DFDCD402CCDE2F108FF
          00EF2DFF00C42AD77E265F70E3BACFF3A8B745B8A3764075EA0A60DBDB03FE51
          E3F98455836AD23A8B544245E2C365957486EA1237C6095ED210014919C83C1E
          0D42FC47636260247ABA7FE1A8BC493361E7E165C98E0AB710D3AA464FAF069D
          D917ED95169BCFEA4872CDB9DB85DA3C9695D1F8732160A08E0276E7F4A287C3
          9D6EB717225E9BBA466920BCFCA96DF4DB4A47254A5AB8FF003A6B3595AE7BAF
          12A2B5282F24E4F61E755B6A8B9DD9EBA5C61BB74B83917E2169E8AE4ACA300F
          6DA4E2926C9CD6D44B92E3736D8A92CA82DA76EB356857928129E6A4DA634A78
          8536D625E9BB6DFD705C592170DC521B5ABCCE02864FBFB546745325CD1D081F
          29120F6F529FF2A19AFA5CF86AB6331A74B8E9E9384A5A7D491F6FBE01A2FC05
          546C9A4DB6CEB3EA48E9F112D37C7DBE9E54C3928B7214DF914AD5BB8EFC7F2A
          6DA81F6A6AEF2A8B058856E2FC35DBD86893B23ED7B0144F257B8AB77BE71C62
          9A598BF334C599E90F38F3BF0EACADC515A8FF0011479269EA5ACA65B1E69622
          1FEFBE7FC695F249C7A669A5AC7ABA7F5DCD2F02F5236603EAB721648F4DC51F
          8D38D49A6F5CC2B7A65EA4B66A06620580972E09736051ED8DDE741F53CCB9DA
          74A4A5DB67CD84B54A6372A3C853648F9BFAA47B569A1AE576BAE96B9B772BAC
          F9BB2731B44892B7001B15FD626A5BBC89AF76D3BD96215CA8181FEDCE67FF00
          B559A650E392DB9C72223E4FFD12AA456C6FA53EDA91C6E98FFF00FA8B14D63C
          62865F511C08523FFC2AA8EE0D9D95E7868C972F52873916C90A1FEE54966C61
          FBAEE440C04C178FF7684784AD1FE9338A0A2365AE52B03EF7F088C7EB52DB94
          5E9E9FBD387EE5B9EFCCE07F8D36E9918C6E36551676F37884319FF486C63FFA
          8559B262E2EEEB7C1FF4C238FEDD57F616B3A82DC31FED8D0FFAC156F3D13FF0
          85400FFCE0476FFDAD36DA1638DD948DD1BC5CE58F47D63FBC69B6DA2B79688B
          CCF1E929D1FDF34D3A5EDFAD3F05636DBED4A9CF4BDBF5A5400F7A54BA429EF4
          87B56435400D62663CA664250165A712B00F9E0838ABA6108775B522EF6C7BAD
          1D780FA4FDB61C3DD2A1E43D0D5421A3DBCA8BE96BCCFD3B7213212B7255F2BE
          C2BEC3E8F34A87F23E5509C6CB714F67611F1498C2ADDDFF00E507FC350AE89A
          B03C47976BBA356A976B7C290EB6E29C609FE24756402857E5907CC1A87F43D0
          511BAA61969CDB45AF68761DEED08BA4070AD49C265B0AC05B2BC7EA9F7AA9B5
          0B3FEBFB87FF0032BEDF5A29A6AE932C17766E308254A41C2DA73943A8F34287
          A1A6B72589971932C341A0FBCA7036144840273B413E9DA924D32529EE489168
          3D6766D3F6536EBB6904DF141D52DA73F78B91F603DC613DCD07D7B7B83A86EA
          D4AB6594DA23B4D6C11CCA53FCE724852B0707D0F6A1DD1A5D1A75CD90DCDAA2
          7DE1CC88973B237684ACA2E70D042195630FB792494FFCEE7B56EFEA3B769AD5
          6EFEF6B12EF511E84C831D32D51F0B4A9CC12A009C7278A81C62F4590DC88CE2
          D979B50521C41C1491D88A23AAEED23515D45CA5B0CB4F965B6DCE90C256520E
          578F2273923D696DE49FA9EDA0A6BFD5F64D4367440B2E92558D5D64B8EB8AB8
          AE475027381850E3939C8AD7C2A9B6C65E9566B9C9310CD710B624100B61C482
          0215E80E7BD463A348B39046060F7CD3AE288EE7BB71666A99274B4AB6499F05
          6FFC3CE575584B9D32B4964A4E15CE320F069BDE7C45D1B2ACD2A2DABC3F976F
          9AEB0A69A92ABCADD4A0A81049494E0F19A88DDAF976BAD9A05AAE1203ECC052
          8C75A93FC401400DA55DCA463807B5090CFB5114BC8E736DF03CD033E2597513
          7267870447187233CB6C65484B89DBBC0F3C77C558BABE098DA62EE52A4ADA7A
          DCB5B2EA0E52E20949041F3E2AAEE8FB548216A6B8C7D1D70D2EEB6DC887240E
          8296A3BA29DC0AB67AA5438293E6734357CA084F6AA644E0ABE12E2C4BD817D0
          7D2EED3C056D5038CF976EF57A426E1DD9B8BA8ACEF2A4C37E5254EA5580EC67
          4AC12DAD3E5EC7B1154AF47927D68DE8BD4773D29784DC2DDD3712A1B64457C1
          533211FD558FE447229C95F4284F6FD08F5EDAFF005DDC38CFFA5BBFF19A67D2
          F6144E56E7E53AFA800A75C53840F224E6B4E8FD2A454FB07F4BD852A23D2A54
          00E3A7ED5B25AF3A7FD0ACA59C934EC063D2CF956E1AF6A7E1900F35B0641A8B
          26903FA3ED590D7B515F8177E1532BA47A257D30AE30558CD6A19C79546C6903
          4B24F9520C1F4A25D2F6AC86A8B2540D0C7962B3D03E944BA39F2A5D0F6A563D
          A0DE89F434BA27D289743EB59E8FBD161481A1827CA918FED44FA3ED4BA229D8
          502FA18F2A5D027CA8A064790A5D1E68B15028B158E8FB5152C8AD7A23D28B15
          033A55AF473E5450B23D2B66E2958CA527028724836B7E01418F6A5D1F6A2A63
          11C62B52CFB50A40E340CE88F4A5450307CC52A9722E0266CF2D232E06DBFEDB
          A91584DB4640F8D82957A17B9A841538A1B96E2CFBA955CD4B09E494F3E74AC8
          13B55B5690497E3103CD2E035C5A4C36D2B726CB0DA127003482A51FF0150732
          00ECB00D398214FBE9652BDCB5F09483927DB149B44927E092CFB94654C86964
          B821C73CA55DD415F6B38E33CD3E5B094B8B4A55B803C1A1D6ED38F4B8B21C33
          986F62729428FDAE3C8D3E71D5316D8B39C05EF886404AC7012A4F707DFCBF5A
          CF1CF09CDC13E51BE5A3CB8F14724A3C3360CFFF00D8ACF440F23F9528539894
          A08C142FD09A7DD2F6ABAE8A12BE86496BDAB6E8E4F14F4355B7487A52DC3DA3
          1E8E697471E429F74456B21871482965C4A09046549C8CE2A3B87B46BD1E2B01
          91E95AC3857162494AA4B4EB78F994A25409F54D140D0C7619F6A7B83683BA3E
          C2B1D11E944FA5EC2B55B036FA1A6A42DA0B5339EC2B93CDF49B2E2C6D48EE4F
          614F5E872144144A29E7B6DCE6BB5E6DCB66536C4A733D33803E9C67F1249A4E
          55CB16DF750CAD30674C664B8D4253C1B6F70DBEDE668B49D3D3AD6E4743C85A
          12FB695151EC73CD581E1BDAFE1B525B9A61D4A1D53495A9284E413E8479E6BD
          0B7ED1CF5C2ED6DEAD8E0C686E28192A6F0A2463B118E0F7E4715E6F27FC9E69
          C9B82B8AEFEFC7D8EFAD060C118FACE9BBF3F0F976FF00B3C9F33494E45A05C5
          9694FB03E5708185364F6CFB510D21E1D48B8467E74E5A596594851493C90464
          1FA55ABE25C673C39176336535234DDCDBDD6A968DBB9991DD31DC4FDE49C1C1
          154D3576D4F74B7A64A9D7CC8B8B852E46690474D03EC2001E83CABA1A2CB9E0
          F66769DBE29DFD8E76BB1E1CD1DFA6B49769FD8657A8F6C8D717196485213C64
          52A61360C98F2DC624B4B43E8561C4AF8293E869575D4D3576727D37E0ACA3BA
          9F8D6BAA80E23B6DCE33DEBA3780CAA421D69C5A5582C847F108F749FD699BC9
          2A1C800A79DC9EC69CADC893A3053EB11E5A0677E701647F89FE748495A384B4
          256E05A1943048C9437F647D01AEB6D74457F72994B99C6D39DAA41CF0A491D8
          D2F8A75484267B6A74ED012F04FF00100FAF658F63F9D6FF000EA5A3AF1D6975
          A1C1523EEFF68771F8FE74A4935C96439E894C05CAE8BCB86663AC25254BE8A8
          A528247CC0AB1C8FA0C5708AB5AECCC6F75A432D273B1672771EDD87CC3EBDA9
          B40B9B48B6BD10B81B71C180F0C1C02307DE9F5DE6DAE65BD9661BD214186034
          CA579CE411F9715831A7EA538D2BFF00477F50E2B4CB6CDDA5CDD577D2FE4162
          5B6F3F8DBD2747236F63F4F4A91592EDD4C469876AFB25C2783EC6A3BF0F37A2
          5D447514FDD4ECFB4AFAE3EBCD604E8E978C69285167EE3A9FB6DFB1FEB0FD7D
          EBA5C491E6DCE58DDAE7F3FCFD89FF0019C79FA53796B949492C3485613B8927
          9E3CB141E24B7E3C6436F12F367E68EF36AC8511E59F5F6A216A9532723F8442
          B07E62A1C27DBEB554A0D1AB1E784F943F8AB756C053CC96D64762ACD616A7D1
          2768650E367385B6AFB3F5CD3E43678DE013EC292919E36E0557669472007702
          BA6C18EC2B74A0FA66B490FC68C12643C946E3819F5A2C96DE0407B5614918CE
          0539282B68A9828248CA4E3229F68DB15F2F374105B611214AC294427EC24772
          4F648A92E4A67518B93E0E5A62D9F1D7D8CDB893D0412F3FC67F8680547F97E3
          511D6131F6AE0A9E52A6D859DEEBC724127909E7D2BD1AA8DA67C3AD34ECBD58
          E36EC9908DAA622E3A8F8CF0D2063760F192719F2AA3F5F5AAF1A9E6C6B86A1B
          7234CDA1CC981698E91D60D0ECB733F964F3EC2AC6A95339B8F53EAE4B8AE09B
          FEC8DAA2D73B504E72E51E6AA44269521A712D29CEAA123EC9201DA7EB8ABEED
          97BB978AFA65D8F05F91607A2CF61E2B696A4759B4399536543C8A7838AA47C0
          7D550744BA8B296D316D7272DBCF21B05CDCA3C2947CC718C76E6BD0F60D6DA3
          E12BF7641B836F4952B794840403E5C638E2BCECF34306A7BDB076DDF9F0975F
          B7C0F43284F3E0FD0E52A5B5F3C797669E2959746C1B37F486FF006F8B2DEB72
          94E4332415A5B748C0504F627B57963586AA0A4BB32D0D4582B59510A653B4A8
          13EBE59F3AF447ED013EC7334F3A872E931891D1E9B69602704AB9CF3E9ED5E5
          BBAB08790C30F6C70308DA16138DDEE7DEA78B1C679AF17118BE2BAFAFD6D92C
          7ECD2EDC96E52EEFFC013E224483D675477AF9395649FC6951111DB3F7523DA9
          577136951CC78D37D1553CD2633494ADB4EF50DD848DC71EE7B7E14C1D692EFC
          C94800F20138CD1392E34D153AA6FA69030909E16959EE08EC4F7FC39A62D052
          A3AF7A4E002A4150C727DAAC32B8A5CA3826438CED1856D48212339091E78078
          15D03EDA56875A756C28E12548241FC7D6B0D05864368C64A89C119DC29A4952
          88CABC9631402E02A9DCEBFF00C6650549F994EA411B87B81C1FD28B35A8E6B0
          92DC3876F8E93C052590A563F1F3F73435097FE0D2A594B69EE80AE323D7E9CD
          741D26402D20BCE6395AB848FA0F3FC6950AD376382ABBDE5637BB22404F9A95
          B5B48F3F40057416D65A7821F9887540F667948F6CD6ED429B3ADEB9782E21A5
          7F106EE139EDC53785BDB7404A14A5A95B4369192AFC2A49AF045A95DC9F6186
          99543694849529970FCC827807C88F43EF528D2CB43ED2B6A52973B2F8EE479F
          E34EF472E118AB0BB7429335956C75C90D152943CB282703FEEA38842B674D29
          6DB46EDDB1080919AA32666F8A34E9B4BB3DE9DB7F238218CFDA19ADFA281E55
          DD40B69DCB525200C92A38007B9F4AE2DC9438DA5D69B7DC42BEC9430B56EFA6
          0556ADF46A9E4863FD4E8D1515C2E256DBB800E148281823D8F957676D8CCB61
          2DBF15120AC9080412A4FA94E0F06A6B63D2B3674A621C3B23F316E212A5B8E6
          E42464027E6E0200CE0E79A3F736F4A6957499BD09F2DA4842A1C67144158FEB
          2FC87B0F4F5A925F13364D5AEA0AD911D1DA0E5CF520AE39816D6C8EB4853640
          4A7CF03BA95EC2AC48FA9B49695B72ECD6562537B9C1B9F696DA9E755DB2BC8C
          247A0EF55CEA8D5573BCCA4B8EC85474F4827E1E3A8A1A4A7C804FF8F734103A
          30014829CF6238A7EAA8FE9297A2CBA9E734B8F8224BAC3C4555CA5A6DF6C79B
          65B602436A70A172729E776EC6412724D45DF71CBADAC30B59765C6754EB7B8E
          54B6D5CAF04F7215838F7341DCD336A32D325A32195EF52D5B17F689F2CF703B
          FE7445B61B62434B402128583DF351F5773B6698E9238E1B60A81C5292771C67
          6E3F5AE76B4DD2048129A7CB6A29C256A567049ED8FA734E5E8EEEE5B8965C7B
          692AD891DF9AD14991200513B520E40C631EB5564843226A4ACD18E7960D4970
          10B9DDE64F783D3253AFAF007CCAE07B01412E0E3CA65C31B697769D815DB3E5
          4E8C5579F6AC88D8C1C518A10C4B6C5513C92C991EE93B600D397A4BF6D1F1E7
          64A6D65B701C0391ED4A88CED3D6E99255224339715DC85633EE7DE955DBD157
          A732A4694B4B680B730EA40480AE4100F91AC4D74F45D47192A4A0907201C64F
          3E95D2325089BD3491DFD7B1269ACD0EBD25C6DB438182BDC903B2B1C6EABAEE
          464771C7B53F2FFF0083C6D71C45D880A53A140EE038C0F2A1F290854B6CB992
          852CA8F3E59A23065B11D95447584A56FE11D657D96D39C93B7CEB9474B3F18E
          3F210B723340A0AD09DC900F6E7F2A4AD32B949B87438811D26FECB72545C8F3
          D3D3DC7BA09E00FC0E2BA18AA8CE29A791C051464F04281C107F1A756F80DCC8
          9156874F5597432A3E63EF215FCC7E156378710152AE52664A870DD014A62609
          480E21D579E01EC7CC7E744E6A31B21822F24E975FEC1F68D3D1FF0075294C25
          24BC80772C70A56DFCC63B707B8A0774B3DCB4FF004E629C52D8DA84A9F6860B
          455F773F5E33E7570BB6CB6A1A434CAFA0868610848E129CE71506D657C8F1CC
          DB40E501250EA96DE4AF23EE83C71C1C9AA61964E7C1B27A7863C0A33E690DF4
          5CD82D47912A63CA4B8A1C384FCBB47707CCABD29EC1BF4CBCCDF85B1C775A4B
          4773D214D15E07924800E3355EF5E24750496D72A32B203697949CAB1DF20647
          F2A79A66E97576F65AB2BAFC64BC7ECA641F3F252B1F30FAD5EB1C5CB7339F97
          3E586070852A5C3FC65F1A1B4DDF275E99B75FAE91A73BB927F77C560485213E
          4A74636A0F912A3C7A1AB8B5614D862B3196B8908A9AC488B1B09715E8A5387E
          CB600C63CFCABCE3E18EB7D5DA7AE172722456A3C8717B674A0C6F7D601E1B42
          7212567FAC781DCD15D5126E9AA2719F7790F4753C0F523B720AF1DC0DCBED9C
          77DA3D862A1927187C8C987066D554AAFE7E09ACFD5D31D6675DDA9E12CF43E1
          E2A1A70A82DC571BC9F2C0C9AAF16B538ACA959F3E7B93E64FB9A79D3022B30D
          9052C349C007D8607F8FE75910D47EC839AC53CB6F83D1E9348B147AE46CCB5D
          45727269DA6324E32AC1F434FE1DADC5114F24DB9C1F6539C554E66C515E40E6
          3A53C24035A16481809A3F06D52246421A0081F78E334DE745F86561482A50EE
          33E7494C9382F047DD4F3DAB90EDC8C53C920EEC04A920F9114DDC428F0127EB
          4FD416C3895A318C66927693C8C0ADD70DCDBBB81F5A6AE32F8560E69AC82D8C
          EE56C838CFE94A9B88C48C9FE74A9EF0DAFE051AA2EB4B0E21B521493B92A4A4
          039F524D71654F39BD641512783BB907D734F9C841E90A2DA0AC00092E1CF07B
          1FF0A6EB08460A1294E7900E01AE8DFC0E43DBB7E1F738ACBEDBC975D0DAD406
          D4EE39E4FB53B94DDC5E5C76DE084B6484840236A55E6783C9A6D014FAAE6D00
          8538B24E3046071DC13E9EF471D4BB36534CC7318A9B6C37BD2D042F3F78E070
          0F91AB1945BDD43FB2B0B6222DF601C6EDAA41195A538C9738EDC71CFAD5CF2E
          2A2D1636F503810DC65C36F734D00372CFD84A7DF9C64FBD40342A5709C5CBDA
          169C6CE704EF4A814E7E9CFD4D3FF10AE570996B8EEA96EF49B714B706785138
          1923DAB0E57BB2281B34EBD3C7BD76486C5ABB4E4F1F0EFB6EC690BE1297BB13
          ECAED517D757686C5C150A2446DC7F8CBCF24109C8F2F5C0F33C54294EE55F36
          339C54834D4D84FCAF87BB32242149090A513948F507D47F2AB1E3507B909679
          4D6D64727C74A4AE3C33D6CE4B923B257EB8F615ADB5A7D05B621A9695921796
          C7DA57A8C738AB9ED9A4EC8D4971D760B9250AE50DA5F294E31EA41E29CA6C71
          ADC56BB65863B2A59C8714E9736FF641E01FC2AA7AD8C7AF1F4FECB1681CD72D
          7E7D81762825AB530663A853FB53B43630B006092B3EE79C5156BA7D8E4FE15A
          1667920B8D1240C670067EA7CFF1A750E2BCA732BDA9AC73CCE7CB35E0D363D3
          C76C151BB6D236E5390BF2C8E2BBDB1895F16A43E63AD957285201047B115DFE
          1F0E654B4E3B76A336C8F1DC20174248EDC551399AE1C9D9B6DA69A0909EFF00
          7BD29ACA7024E0B883E87358D4D77B659222573A486C28ED4E524927D80A8B0B
          9A2794BF11F43AD2F949079C7D3CAA11B6AC7C37C93B890BAADF5D4B529ADBF3
          74F920E2A2F768E90FA94A90A591C000628CE93BAAE125697F0A42FEE93DCD39
          BA5A989F157310A2C28E48C8CA7E952DCC4E8844829DDB8AD4E63B67CAB3D46C
          47208E7C8E2BBBC9619514BCF85287927CABB485C25C64061B585762AA1D8F74
          502372D671BB815890EA52C9FE1E55EB8A7612A8B8094A95B8F7C5765C295200
          52231255D80A77441CD019B7B29C918A54753A6279195C3781FEC52A7BD06E3C
          FD2187ED3398921E6DE6CA7208E42DA51C608F63C11F4A677361A6C0763A488E
          B2484AC728F6E7CBD289C873E2016C34811C37D30849CA900F7FC7DE9CC5B439
          2EC8EBA065A6C2B7A87206071C7EBF5AEBBCBB6B77072A1A794A33F4F9A57FD8
          0F4DBD121CA95224C56A4B452105AEC7DCA4F6DC3D3CEBBDB1A4392186D2CF45
          41C0B5BAA3F304020F6CF9F9E695BED91C4A6E3BCA90EB44951FE261255F4A27
          1ADAD449AA4340AB727E5DE31B479E6AE6E8C7195BA0E7C73F6B610C407FAEC8
          5171C7DA472E92AE3BF901DEBB5FB534616B057183EADA52F24FCA9230338F7A
          1296FAADFF000F724018492BC103D85366E182951790B75450AD8D639048C735
          428C5F6696DAA681EB694DB8585AB3B09483EA3BA4FE58ADE33CA69F4AC9C290
          AC1AE8FA5CF88532B463E19905D27EEE06067DEB8B6953AA0B50DA558CE7BD59
          176E8A24B8E4BD3C26BCB37084E5B257CF2230DE83E6B6CFF954F4426963084E
          3DB19AA034BCE72C132DD76428AFE19E09747FEB1A3DC1FC335ECFB269A86F5B
          1A9AC20A9A90D25D6140E72950041FD6B9BA9D24A597DBD1D0D16BA2F0FBBB4E
          8A966595D5027611F85344D9A4B40940C8F3CD5B576B4BEC208E92BFDDA16C41
          75DCB663938AC8E1283A66D59632568AC1E8D381F9103F3A7F6C833B682A4ED3
          EA4D584BB2444F0EB49DDE84510B5DA632390C823D2A5B5BE0839ED2BD97A65D
          BB301121B0EA5B3B93BC6707DA9ADABC3C5A065A650CB483D80C55D51EDED109
          1D1DA3DA8D5BED30C8F99BFCEAF869A6FA33CF5497345490B404A284B91E3264
          9CF2949E47FDD4466E91BC4689B5F8A1A648E42559C55CF1188B1D38690123DA
          B49C965C6CA544735A5683DB6E5C99DEB5B970B83C9FA834F4B134B71595287A
          94D15D39A6A5FC392F74CABFAB8ABB6E5A7E1BAE15ED4E6854AB633159506C27
          77B564CB82505CB34C752A5E0AC67DBA144C9901417E98E2B36FB9599803A71D
          3BC7DE2726BB6A686EBEEAF3BB009EC738A89BB1C37D97939F3E2B1F66C834D1
          347F52B4B503B5430318CD2A84E241FB2463DE95144CA26F560976E9BD35B2A6
          1C428B6A4AC63E64F7C7A8F71DEB36FB82E35BA6B0328416CA48EC0A95E83D68
          E6B69926E084CD98F29E9064B882B3DF6A54A0071E805465684B9290958CA4ED
          24575D7FE90F71CE595E0C8F6700961A7CCC436CAD5CAB38FA51D750E8799EA3
          A301A1B463271EA7EB535F0C6D16D76EB7075C86DAD4DB484A339200528678ED
          CD776ECF6E735A2195B04B6EBDF3A7A8AE7F5AB1CFC19FD34B934F093C3BBB78
          817D30617521C36905526774F774FD00F2C93E54D7C5DD22343EB27B4EB32DD9
          0865B49EB2C6D52944673C57B57455B60D8ED0CC2B4456A1C7E985EC68632A3D
          C9F327DCD7973F6A9017E2A5C14B1B8F4DBE4FF64509F4FF003A1B5C38FE7654
          4B652F2901C4ECDE54EBDCE7A8E7619F6C0E0509964332C212411DC7D28BAD09
          E885E3E6253939F63FE54024FF00E549A8C6D6413E6049ECCF896D160A400304
          1CFBD7BA7C0CB929DF0834DF5FFF0018889D339F44A8A47E82BC1DA3C66E0949
          EC473FA57B77482445D316B8F1C74DA44646D48EC38AB2391AC857E84618ED7C
          49E4D97194D90E94E28417AC28256EBEE7D0506B9BAE7448DE6A2B31D73714EF
          38CF6AA3519A9F45B871EEF24EE55D6D67721A652E231F2AB1F30FCEB9C3B945
          6B01494AB3E7DAA06CAD58CEE39A7A871648F98F6AC4F512BBA357A489CFEF58
          F918401EE4D3E8931D7903A0107F1A80214A2A1951A2D6B716160059C0A92D54
          BB20F02258E3D31032A18F61CD72724CA31D4762C9491C7A835AC7716A6F0544
          D6C09D8E727CBF98A8BD5CDB20B0C41B73726A580E06C84ABB6E383F9545E7CC
          96770228DEA0717B129DEADA12AC0CFBD003F3039E78ACB9B2C9B3463C4A868E
          882A64AE4A56B5E384A78CD432ECCA15214588FD21F76A70E252900A4019A1B7
          66D09582948194F350849C9F25D75C22BC5C79016794F7FEB52A272929EBA8E0
          77A5565966E3FFD9}
        Properties.Caption = 'kongregate.com'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 5
        OnClick = tyrantlogoClick
        Height = 200
        Width = 185
      end
    end
    object tsSettings: TcxTabSheet
      Caption = 'Settings'
      ImageIndex = 5
      object rgEval: TcxRadioGroup
        Left = 3
        Top = 3
        Caption = 'Evaluation'
        Properties.Items = <>
        TabOrder = 0
        Height = 102
        Width = 190
      end
      object bSlowProgress: TcxRadioButton
        Left = 16
        Top = 24
        Width = 169
        Height = 17
        Caption = 'Slow dll, but with progress bar'
        TabOrder = 1
        OnClick = bFastThreadedClick
      end
      object bFastThreaded: TcxRadioButton
        Left = 16
        Top = 47
        Width = 145
        Height = 17
        Caption = 'Blazing fast executable'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = bFastThreadedClick
      end
      object seThreads: TcxSpinEdit
        Left = 144
        Top = 70
        Properties.MaxValue = 50.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.ReadOnly = False
        TabOrder = 3
        Value = 2
        Width = 41
      end
      object lThreads: TcxLabel
        Left = 91
        Top = 71
        Caption = 'Threads:'
      end
      object gbSeed: TcxGroupBox
        Left = 3
        Top = 111
        Caption = 'Seed'
        TabOrder = 5
        Height = 130
        Width = 190
        object cbRandomSeed: TcxCheckBox
          Left = 13
          Top = 47
          Caption = 'random seed'
          State = cbsChecked
          TabOrder = 0
          OnClick = cbRandomSeedClick
          Width = 90
        end
        object seSeed: TcxSpinEdit
          Left = 13
          Top = 20
          Properties.SpinButtons.Visible = False
          Style.Color = clBtnFace
          TabOrder = 1
          Width = 164
        end
        object cxLabel2: TcxLabel
          Left = 13
          Top = 74
          AutoSize = False
          Caption = 
            'Same seeds will yield same random sequences and results will be ' +
            'the same.'
          Properties.WordWrap = True
          Height = 47
          Width = 164
        end
      end
    end
  end
  object tLoad: TTimer
    Interval = 100
    OnTimer = tLoadTimer
    Left = 464
    Top = 64
  end
  object tCancelHover: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tCancelHoverTimer
    Left = 464
    Top = 112
  end
  object IdHTTP: TIdHTTP
    OnWork = IdHTTPWork
    OnWorkBegin = IdHTTPWorkBegin
    OnWorkEnd = IdHTTPWorkEnd
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 360
    Top = 64
  end
  object IL: TcxImageList
    Height = 210
    Width = 150
    FormatVersion = 1
    DesignInfo = 4194712
  end
  object ILS: TcxImageList
    Height = 105
    Width = 75
    FormatVersion = 1
    DesignInfo = 7340440
  end
  object pmGrid: TPopupMenu
    Left = 336
    Top = 144
    object bDeleteSelected: TMenuItem
      Caption = 'Delete selected'
      OnClick = bDeleteSelectedClick
    end
    object bDeleteAll: TMenuItem
      Caption = 'Delete all'
      OnClick = bDeleteAllClick
    end
  end
end
