# frozen_string_literal: true

require 'spec_helper'

describe Ossert do
  describe 'metrics data' do
    let(:projectA) { Ossert::Project.load_by_name(@a_project) }
    let(:projectB) { Ossert::Project.load_by_name(@b_project) }
    let(:projectC) { Ossert::Project.load_by_name(@c_project) }
    let(:projectD) { Ossert::Project.load_by_name(@d_project) }
    let(:projectE) { Ossert::Project.load_by_name(@e_project) }

    it do
      expect(projectA.community.quarters.last_year_as_hash).to eq(
        'answers_avg' => 0.25,
        'forks_count' => 9.0,
        'question_score_sum' => 2.0,
        'question_view_sum' => 1078.0,
        'questioner_rep_median' => 6.0,
        'questioners_count' => 8.0,
        'questions_count' => 8.0,
        'questions_resolved_percent' => 12.5,
        'stargazers_count' => 61.0,
        'total_downloads_count' => 42_186_016.0,
        'users_commenting_issues_count' => 7.0,
        'users_commenting_pr_count' => 2.0,
        'users_creating_issues_count' => 7.0,
        'users_creating_pr_count' => 3.0,
        'users_involved_count' => 80.0,
        'users_involved_no_stars_count' => 19.0
      )
    end

    it do
      expect(projectA.community.total.metrics_to_hash).to eq(
        'contributors_count' => 43,
        'dependants_count' => 1987,
        'forks_count' => 98,
        'last_question_date_int' => 1_481_301_360,
        'questions_count' => 83,
        'questions_resolved_percent' => 39.76,
        'stargazers_count' => 538,
        'total_downloads_count' => 117_960_880,
        'users_commenting_issues_count' => 110,
        'users_commenting_pr_count' => 56,
        'users_creating_issues_count' => 77,
        'users_creating_pr_count' => 58,
        'users_involved_count' => 742,
        'users_involved_no_stars_count' => 204,
        'watchers_count' => 23
      )
    end

    it do
      expect(projectA.agility.quarters.last_year_as_hash).to eq(
        'commits' => 17.0,
        'issues_actual_count' => 2.0,
        'issues_all_count' => 8.0,
        'issues_closed_percent' => 87.5,
        'issues_processed_in_avg' => 54.0,
        'issues_processed_in_median' => 6.0,
        'pr_actual_count' => 0.0,
        'pr_all_count' => 4.0,
        'pr_closed_percent' => 75.0,
        'pr_processed_in_avg' => 1.0,
        'pr_processed_in_median' => 1.0,
        'releases_count' => 3.0
      )
    end
    it do
      expect(projectA.agility.total.metrics_to_hash).to eq(
        'commits_count_since_last_release_count' => 5,
        'first_issue_date_int' => 1_276_899_144,
        'first_pr_date_int' => 1_287_453_975,
        'issues_all_count' => 92,
        'issues_closed_percent' => 98.91.to_d,
        'issues_non_owner_percent' => 100.0.to_d,
        'issues_processed_in_avg' => 46,
        'issues_processed_in_median' => 6,
        'issues_with_contrib_comments_percent' => 80.43.to_d,
        'last_changed' => 1_470_346_043,
        'last_issue_date_int' => 1_469_466_065,
        'last_pr_date_int' => 1_470_346_043,
        'last_release_date_int' => 1_463_529_600,
        'life_period' => 193_446_899,
        'pr_all_count' => 80,
        'pr_closed_percent' => 98.75.to_d,
        'pr_non_owner_percent' => 100.0.to_d,
        'pr_processed_in_avg' => 43,
        'pr_processed_in_median' => 16,
        'pr_with_contrib_comments_percent' => 83.75.to_d,
        'releases_count' => 55,
        'stale_branches_count' => 5
      )
    end

    it do
      expect(projectB.community.quarters.last_year_as_hash).to eq(
        'answers_avg' => 1.12,
        'forks_count' => 62.0,
        'question_score_sum' => 448.0,
        'question_view_sum' => 108_753.0,
        'questioner_rep_median' => 84.0,
        'questioners_count' => 641.0,
        'questions_count' => 735.0,
        'questions_resolved_percent' => 54.56,
        'stargazers_count' => 308.0,
        'total_downloads_count' => 34_225_472.0,
        'users_commenting_issues_count' => 37.0,
        'users_commenting_pr_count' => 25.0,
        'users_creating_issues_count' => 24.0,
        'users_creating_pr_count' => 25.0,
        'users_involved_count' => 415.0,
        'users_involved_no_stars_count' => 107.0
      )
    end

    it do
      expect(projectB.community.total.metrics_to_hash).to eq(
        'contributors_count' => 153,
        'dependants_count' => 52_391,
        'forks_count' => 375,
        'last_question_date_int' => 1_482_361_502,
        'questions_count' => 5269,
        'questions_resolved_percent' => 56.48,
        'stargazers_count' => 764,
        'total_downloads_count' => 123_254_906,
        'users_commenting_issues_count' => 71,
        'users_commenting_pr_count' => 42,
        'users_creating_issues_count' => 62,
        'users_creating_pr_count' => 64,
        'users_involved_count' => 1256,
        'users_involved_no_stars_count' => 492,
        'watchers_count' => 46
      )
    end

    it do
      expect(projectB.agility.quarters.last_year_as_hash).to eq(
        'commits' => 263.0,
        'issues_actual_count' => 30.0,
        'issues_all_count' => 51.0,
        'issues_closed_percent' => 64.71,
        'issues_processed_in_avg' => 83.0,
        'issues_processed_in_median' => 7.0,
        'pr_actual_count' => 22.0,
        'pr_all_count' => 73.0,
        'pr_closed_percent' => 87.67,
        'pr_processed_in_avg' => 55.0,
        'pr_processed_in_median' => 3.0,
        'releases_count' => 10.0
      )
    end
    it do
      expect(projectB.agility.total.metrics_to_hash).to eq(
        'commits_count_since_last_release_count' => 27,
        'first_issue_date_int' => 1_417_051_089,
        'first_pr_date_int' => 1_401_383_556,
        'issues_all_count' => 68,
        'issues_closed_percent' => 73.53.to_d,
        'issues_non_owner_percent' => 100.0.to_d,
        'issues_processed_in_avg' => 61,
        'issues_processed_in_median' => 4,
        'issues_with_contrib_comments_percent' => 70.59.to_d,
        'last_changed' => 1_477_056_645,
        'last_issue_date_int' => 1_477_056_645,
        'last_pr_date_int' => 1_477_004_573,
        'last_release_date_int' => 1_474_329_600,
        'life_period' => 75_673_089,
        'pr_all_count' => 104,
        'pr_closed_percent' => 95.19.to_d,
        'pr_non_owner_percent' => 100.0.to_d,
        'pr_processed_in_avg' => 109,
        'pr_processed_in_median' => 58,
        'pr_with_contrib_comments_percent' => 63.46.to_d,
        'releases_count' => 92,
        'stale_branches_count' => 5
      )
    end

    it do
      expect(projectC.community.quarters.last_year_as_hash).to eq(
        'answers_avg' => 0.0,
        'forks_count' => 80.0,
        'question_score_sum' => 0.0,
        'question_view_sum' => 0.0,
        'questioner_rep_median' => 0.0,
        'questioners_count' => 0.0,
        'questions_count' => 0.0,
        'questions_resolved_percent' => 0.0,
        'stargazers_count' => 2805.0,
        'total_downloads_count' => 123_520.0,
        'users_commenting_issues_count' => 15.0,
        'users_commenting_pr_count' => 28.0,
        'users_creating_issues_count' => 10.0,
        'users_creating_pr_count' => 16.0,
        'users_involved_count' => 2879.0,
        'users_involved_no_stars_count' => 74.0
      )
    end

    it do
      expect(projectC.community.total.metrics_to_hash).to eq(
        'contributors_count' => 16,
        'dependants_count' => 0,
        'forks_count' => 94,
        'last_question_date_int' => 1_480_670_475,
        'questions_count' => 5,
        'questions_resolved_percent' => 60.0,
        'stargazers_count' => 3699,
        'total_downloads_count' => 149_174,
        'users_commenting_issues_count' => 23,
        'users_commenting_pr_count' => 36,
        'users_creating_issues_count' => 16,
        'users_creating_pr_count' => 24,
        'users_involved_count' => 3828,
        'users_involved_no_stars_count' => 129,
        'watchers_count' => 101
      )
    end

    it do
      expect(projectC.agility.quarters.last_year_as_hash).to eq(
        'commits' => 22.0,
        'issues_actual_count' => 8.0,
        'issues_all_count' => 14.0,
        'issues_closed_percent' => 71.43,
        'issues_processed_in_avg' => 22.0,
        'issues_processed_in_median' => 3.0,
        'pr_actual_count' => 8.0,
        'pr_all_count' => 23.0,
        'pr_closed_percent' => 78.26,
        'pr_processed_in_avg' => 21.0,
        'pr_processed_in_median' => 14.0,
        'releases_count' => 1.0
      )
    end
    it do
      expect(projectC.agility.total.metrics_to_hash).to eq(
        'commits_count_since_last_release_count' => 17,
        'first_issue_date_int' => 1_391_636_912,
        'first_pr_date_int' => 1_391_739_149,
        'issues_all_count' => 19,
        'issues_closed_percent' => 78.95.to_d,
        'issues_non_owner_percent' => 100.0.to_d,
        'issues_processed_in_avg' => 22,
        'issues_processed_in_median' => 10,
        'issues_with_contrib_comments_percent' => 63.16.to_d,
        'last_changed' => 1_477_413_776,
        'last_issue_date_int' => 1_461_424_271,
        'last_pr_date_int' => 1_477_413_776,
        'last_release_date_int' => 1_454_457_600,
        'life_period' => 85_776_864,
        'pr_all_count' => 39,
        'pr_closed_percent' => 89.74.to_d,
        'pr_non_owner_percent' => 100.0.to_d,
        'pr_processed_in_avg' => 22,
        'pr_processed_in_median' => 14,
        'pr_with_contrib_comments_percent' => 87.18.to_d,
        'releases_count' => 6,
        'stale_branches_count' => 1
      )
    end

    it do
      expect(projectD.community.quarters.last_year_as_hash).to eq(
        'answers_avg' => 0.0,
        'forks_count' => 7.0,
        'question_score_sum' => 0.0,
        'question_view_sum' => 0.0,
        'questioner_rep_median' => 0.0,
        'questioners_count' => 0.0,
        'questions_count' => 0.0,
        'questions_resolved_percent' => 0.0,
        'stargazers_count' => 134.0,
        'total_downloads_count' => 2471.0,
        'users_commenting_issues_count' => 5.0,
        'users_commenting_pr_count' => 3.0,
        'users_creating_issues_count' => 3.0,
        'users_creating_pr_count' => 8.0,
        'users_involved_count' => 141.0,
        'users_involved_no_stars_count' => 7.0
      )
    end

    it do
      expect(projectD.community.total.metrics_to_hash).to eq(
        'contributors_count' => 8,
        'dependants_count' => 1,
        'forks_count' => 8,
        'last_question_date_int' => 0,
        'questions_count' => 0,
        'questions_resolved_percent' => 0,
        'stargazers_count' => 136,
        'total_downloads_count' => 2828,
        'users_commenting_issues_count' => 5,
        'users_commenting_pr_count' => 3,
        'users_creating_issues_count' => 3,
        'users_creating_pr_count' => 8,
        'users_involved_count' => 150,
        'users_involved_no_stars_count' => 14,
        'watchers_count' => 22
      )
    end

    it do
      expect(projectD.agility.quarters.last_year_as_hash).to eq(
        'commits' => 178.0,
        'issues_actual_count' => 6.0,
        'issues_all_count' => 10.0,
        'issues_closed_percent' => 20.0,
        'issues_processed_in_avg' => 74.0,
        'issues_processed_in_median' => 74.0,
        'pr_actual_count' => 3.0,
        'pr_all_count' => 22.0,
        'pr_closed_percent' => 100.0,
        'pr_processed_in_avg' => 17.0,
        'pr_processed_in_median' => 2.0,
        'releases_count' => 8.0
      )
    end
    it do
      expect(projectD.agility.total.metrics_to_hash).to eq(
        'commits_count_since_last_release_count' => 6,
        'first_issue_date_int' => 1_446_548_597,
        'first_pr_date_int' => 1_446_407_305,
        'issues_all_count' => 10,
        'issues_closed_percent' => 20.0.to_d,
        'issues_non_owner_percent' => 100.0.to_d,
        'issues_processed_in_avg' => 74,
        'issues_processed_in_median' => 74,
        'issues_with_contrib_comments_percent' => 50.0.to_d,
        'last_changed' => 1_474_863_265,
        'last_issue_date_int' => 1_474_863_265,
        'last_pr_date_int' => 1_472_205_238,
        'last_release_date_int' => 1_471_219_200,
        'life_period' => 28_455_960,
        'pr_all_count' => 22,
        'pr_closed_percent' => 100.0.to_d,
        'pr_non_owner_percent' => 100.0.to_d,
        'pr_processed_in_avg' => 22,
        'pr_processed_in_median' => 6,
        'pr_with_contrib_comments_percent' => 86.36.to_d,
        'releases_count' => 8,
        'stale_branches_count' => 2
      )
    end

    it do
      expect(projectE.community.quarters.last_year_as_hash).to eq(
        'answers_avg' => 0.0,
        'forks_count' => 1.0,
        'question_score_sum' => 0.0,
        'question_view_sum' => 0.0,
        'questioner_rep_median' => 0.0,
        'questioners_count' => 0.0,
        'questions_count' => 0.0,
        'questions_resolved_percent' => 0.0,
        'stargazers_count' => 10.0,
        'total_downloads_count' => 3302.0,
        'users_commenting_issues_count' => 1.0,
        'users_commenting_pr_count' => 0.0,
        'users_creating_issues_count' => 1.0,
        'users_creating_pr_count' => 0.0,
        'users_involved_count' => 11.0,
        'users_involved_no_stars_count' => 1.0
      )
    end

    it do
      expect(projectE.community.total.metrics_to_hash).to eq(
        'contributors_count' => 1,
        'dependants_count' => 0,
        'forks_count' => 1,
        'last_question_date_int' => 0,
        'questions_count' => 0,
        'questions_resolved_percent' => 0,
        'stargazers_count' => 10,
        'total_downloads_count' => 3392,
        'users_commenting_issues_count' => 1,
        'users_commenting_pr_count' => 0,
        'users_creating_issues_count' => 1,
        'users_creating_pr_count' => 0,
        'users_involved_count' => 11,
        'users_involved_no_stars_count' => 1,
        'watchers_count' => 3
      )
    end

    it do
      expect(projectE.agility.quarters.last_year_as_hash).to eq(
        'commits' => 96.0,
        'issues_actual_count' => 0.0,
        'issues_all_count' => 2.0,
        'issues_closed_percent' => 50.0,
        'issues_processed_in_avg' => 44.0,
        'issues_processed_in_median' => 44.0,
        'pr_actual_count' => 0.0,
        'pr_all_count' => 0.0,
        'pr_closed_percent' => 0.0,
        'pr_processed_in_avg' => 1826.0,
        'pr_processed_in_median' => 1826.0,
        'releases_count' => 6.0
      )
    end
    it do
      expect(projectE.agility.total.metrics_to_hash).to eq(
        'commits_count_since_last_release_count' => 5,
        'first_issue_date_int' => 1_455_622_969,
        'first_pr_date_int' => 0,
        'issues_all_count' => 2,
        'issues_closed_percent' => 50.0.to_d,
        'issues_non_owner_percent' => 0.0.to_d,
        'issues_processed_in_avg' => 44,
        'issues_processed_in_median' => 44,
        'issues_with_contrib_comments_percent' => 50.0.to_d,
        'last_changed' => 1_455_710_797,
        'last_issue_date_int' => 1_455_710_797,
        'last_pr_date_int' => 0,
        'last_release_date_int' => 1_456_617_600,
        'life_period' => 87_828,
        'pr_all_count' => 0,
        'pr_closed_percent' => 0,
        'pr_non_owner_percent' => 0,
        'pr_processed_in_avg' => 0,
        'pr_processed_in_median' => 0,
        'pr_with_contrib_comments_percent' => 0,
        'releases_count' => 6,
        'stale_branches_count' => 1
      )
    end
  end
end
