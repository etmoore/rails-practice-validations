require 'rails_helper'

describe Organization do
  it "validates the presence of the name" do
    organization = Organization.new
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)

    organization.name = "Acme"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end

  it "validates the uniqueness of the name" do
    org = Organization.create(name: "Acme")
    dup_org = Organization.new(name: "Acme")
    dup_org.valid?
    expect(dup_org.errors[:name].present?).to eq(true)

    dup_org.name = "Zenith"
    dup_org.valid?
    expect(dup_org.errors[:name].present?).to eq(false)
  end
end
