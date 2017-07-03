<?php

namespace backend\models;

use Yii;
use yii\helpers\Url;
/**
 * This is the model class for table "tintuc".
 *
 * @property integer $id_tt
 * @property string $tieude_tt
 * @property string $noidung_tt
 * @property integer $id_trangthai_tt
 * @property string $video_tt
 * @property string $hinhanh_tt
 * @property string $time_up
 */
class Tintuc extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tintuc';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tieude_tt', 'noidung_tt','id_trangthai_tt'], 'required'],
            [['id_trangthai_tt'], 'integer'],
            [['time_up'], 'safe'],
            [['tieude_tt'], 'string', 'max' => 150],
            [['noidung_tt'], 'string'],
            [['video_tt', 'hinhanh_tt'], 'string', 'max' => 200],
            [['tieude_tt'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_tt' => 'Id Tt',
            'tieude_tt' => 'Tiêu đề tin tức',
            'noidung_tt' => 'Phần nội dung của tin tức',
            'id_trangthai_tt' => 'Trang thái',
            'video_tt' => 'Video',
            'hinhanh_tt' => 'Hình Ảnh',
            'time_up' => 'Thời gian đã đăng',
        ];
    }
    
}
