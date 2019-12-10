Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2F4117BFE
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 01:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baNrqfZdJiq00IytglgSvTl+1jLks4Y4XLMoWbAEk64=; b=MpTNJazhCHpWso
	aOa0101uhX3kY4WZNErPzjiS2FzugvW3Fix30c8YI1cFtGuXlWPXUzRqIBVgnW+TqV3CllnBfYuJ1
	NZ1aN0TdRQjm8Y7Nv5fDGFDHsmGyva/YSc0V7n5hBmYFX4y5c3BgU3cdxchSZiufBpz439tcplv8T
	AAt3YbQ+4rA24oZL/DVpDryOmQaJAOqo/URwnojNHWCfyMl1mSECr7dJOxwKjAnV1k3ppvt5rmRPA
	fsfQkcFOJwqEiI6x18JS1Yws77W34Efiz+y+B/AGtznf0bqpagdzr+ZJFMTxpIDVfvNliuArkoAPY
	Z8ewRi59gs9Z5HGmdvDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSzX-0008Ri-F0; Tue, 10 Dec 2019 00:03:03 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSzU-0008RA-U4
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 00:03:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id DBCDA609D2C3;
 Tue, 10 Dec 2019 01:02:58 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ni-rE7Dfg3Ju; Tue, 10 Dec 2019 01:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 88D1960B3027;
 Tue, 10 Dec 2019 01:02:58 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cDLlGxCrPFF2; Tue, 10 Dec 2019 01:02:58 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 60108609D2C3;
 Tue, 10 Dec 2019 01:02:58 +0100 (CET)
Date: Tue, 10 Dec 2019 01:02:58 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Brendan Higgins <brendanhiggins@google.com>
Message-ID: <1785498655.111829.1575936178298.JavaMail.zimbra@nod.at>
In-Reply-To: <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
 <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
 <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: drivers: remove support for UML_NET_PCAP
Thread-Index: hO49xBuZNB9UehdA0F84GK6DxT1WWA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_160301_117999_1EEE7901 
X-CRM114-Status: UNSURE (   4.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Johannes Berg <johannes.berg@intel.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow <davidgow@google.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkJyZW5kYW4gSGlnZ2lucyIg
PGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+Cj4+IElNSE8gd2Ugc2hvdWxkIGF0IGxlYXN0IG1h
cmsgdGhlbSBhcyAib2Jzb2xldGUiIGFuZCBzdGFydCBwcmVwYXJpbmcgdG8KPj4gcmVtb3ZlIHRo
ZW0uCj4gCj4gQWxyaWdodCwgSSB3aWxsIHNlbmQgYSBwYXRjaCBvdXQgd2hpY2ggbWFya3MgdGhl
IG90aGVyIG5ldHdvcmsgZHJpdmVycwo+IGFzICJvYnNvbGV0ZSIuCj4gCj4gQ2xhcmlmaWNhdGlv
bjogU2hvdWxkIEkgbWFyayBhbGwgVU1MIG5ldHdvcmsgZGV2aWNlcyBhcyAib2Jzb2xldGUiCj4g
ZXhjZXB0IGZvciBORVRfVkVDVE9SPyBEYWVtb24gYW5kIE1DQVNUIGxvb2tlZCB0byBtZSAoSSBh
bSBub3QgYQo+IG5ldHdvcmtpbmcgZXhwZXJ0KSwgbGlrZSB0aGV5IG1pZ2h0IG5vdCBiZSBjb3Zl
cmVkIGJ5IHZlY3Rvci4KCk5vLiBXaHk/CgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0
CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
