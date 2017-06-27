<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Tintuc;

/**
 * TintucSearch represents the model behind the search form about `app\models\Tintuc`.
 */
class TintucSearch extends Tintuc
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_tt', 'id_trangthai_tt'], 'integer'],
            [['tieude_tt', 'noidung_tt', 'video_tt', 'hinhanh_tt', 'time_up'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Tintuc::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_tt' => $this->id_tt,
            'id_trangthai_tt' => $this->id_trangthai_tt,
            'time_up' => $this->time_up,
        ]);

        $query->andFilterWhere(['like', 'tieude_tt', $this->tieude_tt])
            ->andFilterWhere(['like', 'noidung_tt', $this->noidung_tt])
            ->andFilterWhere(['like', 'video_tt', $this->video_tt])
            ->andFilterWhere(['like', 'hinhanh_tt', $this->hinhanh_tt]);

        return $dataProvider;
    }
}
