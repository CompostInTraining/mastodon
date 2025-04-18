# frozen_string_literal: true

class AnnouncementPolicy < ApplicationPolicy
  def index?
    role.can?(:manage_announcements)
  end

  def create?
    role.can?(:manage_announcements)
  end

  def update?
    role.can?(:manage_announcements)
  end

  def destroy?
    role.can?(:manage_announcements)
  end

  def distribute?
    record.published? && !record.notification_sent? && role.can?(:manage_settings)
  end
end
