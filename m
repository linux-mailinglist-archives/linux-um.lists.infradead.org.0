Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C300010C5EF
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 10:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nV0tKzF74ckiQwTZ11vNoIWMLs3KAuAdHu+ah4MrYRM=; b=K+06rC5Scy8gLdR7+RiHvpPqM
	hssmd0N5DwhtyAKpyt5XTIpvF/7TVaCTMOyIIgIeSuG/N00x/thsATSscGgfL+hh7jiJTsMLNUsP2
	y+SIHaMNhj8oCLLsaakgM+cgTqlIQOl4i9+7VL6x902Qj2YH1jz7idV90Rh8HVg95XBo1CqaWLNvP
	EAHAxvJf0X83E6X3XfhHslfXtcqlkSHSqAhhCDSjI8KsADswNOH3wQOj6G6rGeUPq5pmF7obL5Wra
	OXIfIjTcvb5bJokVzEuTfRUAnziaEOKv/BCciEZJc0nWQvY8wGw+bETsA54FSuemRJIyEJNk51kQb
	kNmAFtAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaG2F-00088G-2w; Thu, 28 Nov 2019 09:24:27 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaG2C-00087e-D8
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 09:24:26 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaG23-0006JS-1o; Thu, 28 Nov 2019 09:24:16 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaG20-0006G8-LX; Thu, 28 Nov 2019 09:24:14 +0000
Subject: Re: [PATCH -next] um: vector: use GFP_ATOMIC under spin lock
To: Richard Weinberger <richard@nod.at>
References: <20191128020147.191893-1-weiyongjun1@huawei.com>
 <20191128080641.GD1781@kadam>
 <5892ee7c-ff24-fb3c-6911-44e0b1d5895f@cambridgegreys.com>
 <1784077834.99875.1574930472125.JavaMail.zimbra@nod.at>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <ceedf42c-2dc0-df2e-cf3f-323c675dec78@cambridgegreys.com>
Date: Thu, 28 Nov 2019 09:24:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1784077834.99875.1574930472125.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_012424_448301_BDAA78CD 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-um <linux-um@lists.infradead.org>, Jeff Dike <jdike@addtoit.com>,
 kernel-janitors <kernel-janitors@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Wei Yongjun <weiyongjun1@huawei.com>,
 netdev <netdev@vger.kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAyOC8xMS8yMDE5IDA4OjQxLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4gLS0tLS0g
VXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBWb246ICJhbnRvbiBpdmFub3YiIDxhbnRvbi5p
dmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+PiBBbjogIkRhbiBDYXJwZW50ZXIiIDxkYW4uY2Fy
cGVudGVyQG9yYWNsZS5jb20+LCAiV2VpIFlvbmdqdW4iIDx3ZWl5b25nanVuMUBodWF3ZWkuY29t
Pgo+PiBDQzogIlNvbmcgTGl1IiA8c29uZ2xpdWJyYXZpbmdAZmIuY29tPiwgIkRhbmllbCBCb3Jr
bWFubiIgPGRhbmllbEBpb2dlYXJib3gubmV0PiwgImtlcm5lbC1qYW5pdG9ycyIKPj4gPGtlcm5l
bC1qYW5pdG9yc0B2Z2VyLmtlcm5lbC5vcmc+LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Piwg
IkplZmYgRGlrZSIgPGpkaWtlQGFkZHRvaXQuY29tPiwgImxpbnV4LXVtIgo+PiA8bGludXgtdW1A
bGlzdHMuaW5mcmFkZWFkLm9yZz4sICJBbGV4ZWkgU3Rhcm92b2l0b3YiIDxhc3RAa2VybmVsLm9y
Zz4sICJuZXRkZXYiIDxuZXRkZXZAdmdlci5rZXJuZWwub3JnPiwKPj4gYnBmQHZnZXIua2VybmVs
Lm9yZywgIk1hcnRpbiBLYUZhaSBMYXUiIDxrYWZhaUBmYi5jb20+Cj4+IEdlc2VuZGV0OiBEb25u
ZXJzdGFnLCAyOC4gTm92ZW1iZXIgMjAxOSAwOToxODozMAo+PiBCZXRyZWZmOiBSZTogW1BBVENI
IC1uZXh0XSB1bTogdmVjdG9yOiB1c2UgR0ZQX0FUT01JQyB1bmRlciBzcGluIGxvY2sKPiAKPj4g
T24gMjgvMTEvMjAxOSAwODowNiwgRGFuIENhcnBlbnRlciB3cm90ZToKPj4+IE9uIFRodSwgTm92
IDI4LCAyMDE5IGF0IDAyOjAxOjQ3QU0gKzAwMDAsIFdlaSBZb25nanVuIHdyb3RlOgo+Pj4+IEEg
c3BpbiBsb2NrIGlzIHRha2VuIGhlcmUgc28gd2Ugc2hvdWxkIHVzZSBHRlBfQVRPTUlDLgo+Pj4+
Cj4+Pj4gRml4ZXM6IDk4MDcwMTlhNjJkYyAoInVtOiBMb2FkYWJsZSBCUEYgIkZpcm13YXJlIiBm
b3IgdmVjdG9yIGRyaXZlcnMiKQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFdlaSBZb25nanVuIDx3ZWl5
b25nanVuMUBodWF3ZWkuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIGFyY2gvdW0vZHJpdmVycy92ZWN0
b3Jfa2Vybi5jIHwgNCArKy0tCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3VtL2RyaXZlcnMv
dmVjdG9yX2tlcm4uYyBiL2FyY2gvdW0vZHJpdmVycy92ZWN0b3Jfa2Vybi5jCj4+Pj4gaW5kZXgg
OTI2MTdlMTY4MjllLi42ZmYwMDY1YTI3MWQgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC91bS9kcml2
ZXJzL3ZlY3Rvcl9rZXJuLmMKPj4+PiArKysgYi9hcmNoL3VtL2RyaXZlcnMvdmVjdG9yX2tlcm4u
Ywo+Pj4+IEBAIC0xNDAyLDcgKzE0MDIsNyBAQCBzdGF0aWMgaW50IHZlY3Rvcl9uZXRfbG9hZF9i
cGZfZmxhc2goc3RydWN0IG5ldF9kZXZpY2UKPj4+PiAqZGV2LAo+Pj4+ICAgIAkJa2ZyZWUodnAt
PmJwZi0+ZmlsdGVyKTsKPj4+PiAgICAJCXZwLT5icGYtPmZpbHRlciA9IE5VTEw7Cj4+Pj4gICAg
CX0gZWxzZSB7Cj4+Pj4gLQkJdnAtPmJwZiA9IGttYWxsb2Moc2l6ZW9mKHN0cnVjdCBzb2NrX2Zw
cm9nKSwgR0ZQX0tFUk5FTCk7Cj4+Pj4gKwkJdnAtPmJwZiA9IGttYWxsb2Moc2l6ZW9mKHN0cnVj
dCBzb2NrX2Zwcm9nKSwgR0ZQX0FUT01JQyk7Cj4+Pj4gICAgCQlpZiAodnAtPmJwZiA9PSBOVUxM
KSB7Cj4+Pj4gICAgCQkJbmV0ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWxsb2NhdGUgbWVtb3J5
IGZvciBmaXJtd2FyZVxuIik7Cj4+Pj4gICAgCQkJZ290byBmbGFzaF9mYWlsOwo+Pj4+IEBAIC0x
NDE0LDcgKzE0MTQsNyBAQCBzdGF0aWMgaW50IHZlY3Rvcl9uZXRfbG9hZF9icGZfZmxhc2goc3Ry
dWN0IG5ldF9kZXZpY2UKPj4+PiAqZGV2LAo+Pj4+ICAgIAlpZiAocmVxdWVzdF9maXJtd2FyZSgm
ZncsIGVmbC0+ZGF0YSwgJnZkZXZpY2UtPnBkZXYuZGV2KSkKPj4+ICAgICAgICAgICAgICAgXl5e
Xl5eXl5eXl5eXl5eXgo+Pj4KPj4+IElzIGl0IHJlYWxseSBwb3NzaWJsZSB0byBjYWxsIHJlcXVl
c3RfZmlybXdhcmUoKSB3aGlsZSBob2xkaW5nIGEKPj4+IHNwaW5fbG9jaz8gIEkgd2FzIHNvIHN1
cmUgdGhhdCByZWFkIGZyb20gdGhlIGRpc2suCj4+Cj4+IFdvcmtzLCBJIHRlc3RlZCB0aGUgcGF0
Y2ggcXVpdGUgYSBmZXcgdGltZXMuCj4gCj4gSXQgd29ya3MgYmVjYXVzZSBvZiB0aGUgbmF0dXJl
IG9mIFVNTCAtPm5vICBTTVAgb3IgUFJFRU1QVC4KPiBCdXQgYmV0dGVyIHJlcXVlc3QgdGhlIGZp
cm13YXJlIGJlZm9yZSB0YWtpbmcgdGhlIHNwaW5sb2NrLgo+IHJlcXVlc3RfZmlybXdhcmUoKSBj
YW4gYmxvY2suCj4gU2FtZSBmb3IgdGhlIGttYWxsb2MoKSwganVzdCBhbGxvY2F0ZSB0aGUgYnVm
ZmVyIGJlZm9yZSBhbmQgdGhlbiBhc3NpZ24KPiB0aGUgcG9pbnRlciB1bmRlciB0aGUgbG9jay4g
VGhhdCB3YXkgeW91IGRvbid0IG5lZWQgR0ZQX0FUT01JQy4KCkFjay4KCkkgd2lsbCBtYWtlIGFu
IGluY3JlbWVudGFsIG9uIHRvcCBvZiB0aGUgZXhpc3RpbmcgcGF0Y2ggKGFzIHRoYXQgaXMgCmFs
cmVhZHkgaW4gLW5leHQKCkJyZ2RzLAoKPiAKPiBUaGFua3MsCj4gLy9yaWNoYXJkCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC11bSBt
YWlsaW5nIGxpc3QKPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo+IAoKLS0gCkFudG9uIFIu
IEl2YW5vdgpDYW1icmlkZ2VncmV5cyBMaW1pdGVkLiBSZWdpc3RlcmVkIGluIEVuZ2xhbmQuIENv
bXBhbnkgTnVtYmVyIDEwMjczNjYxCmh0dHBzOi8vd3d3LmNhbWJyaWRnZWdyZXlzLmNvbS8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1h
aWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
